// eg_liquid_reveal v1.0 · EGD 原子控件：液态浸染转场（只管"从触发点圆形揭晓"，不管内容/路由）
// 装饰器式：EGDLiquidReveal(revealFrom: Alignment, duration: 500ms, child: ...) 包要揭晓的内容
// 特性：圆形遮罩从触发点扩散 · 弹性曲线 · 边缘高光 · 类似"水浸染过去"
import 'package:flutter/material.dart';

/// 液态浸染转场原子件 —— 让被包裹内容从指定点像"水浸"一样圆形扩散揭晓。
/// 用于页面切换 / 弹层出现：从触发按钮位置开始，液态玻璃圈向外漫开。
/// 可配合 Stack + IndexedStack 做页面级覆盖转场。
class EGDRevealController extends ChangeNotifier {
  AnimationController? _controller;

  /// 是否已揭晓
  bool get isRevealed => _controller?.isCompleted ?? false;

  /// 触发揭晓（从 0 播放到 1）
  void reveal() {
    _controller?.forward(from: 0);
  }

  /// 触发消退（从 1 播放到 0）
  void dismiss() {
    _controller?.reverse();
  }

  void _attach(AnimationController c) => _controller = c;
}

/// 揭晓位置（相对自身）
enum RevealOrigin {
  center,
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class EGDLiquidReveal extends StatefulWidget {
  final Widget child;

  /// 揭晓起点
  final RevealOrigin origin;

  /// 揭晓动画时长
  final Duration duration;

  /// 揭晓曲线（默认弹性）
  final Curve curve;

  /// 可选控制器（外部触发 reveal/dismiss）
  final EGDRevealController? controller;

  /// 边缘高光强度（0 关闭）
  final double edgeGlow;

  const EGDLiquidReveal({
    super.key,
    required this.child,
    this.origin = RevealOrigin.center,
    this.duration = const Duration(milliseconds: 520),
    this.curve = Curves.easeOutCubic,
    this.controller,
    this.edgeGlow = 0.6,
  });

  @override
  State<EGDLiquidReveal> createState() => _EGDLiquidRevealState();
}

class _EGDLiquidRevealState extends State<EGDLiquidReveal> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _t;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..forward(); // 默认进场即揭晓
    _t = CurvedAnimation(parent: _controller, curve: widget.curve);
    widget.controller?._attach(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _t,
      builder: (context, child) {
        return ClipPath(
          clipper: _LiquidRevealClipper(
            progress: _t.value,
            origin: widget.origin,
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class _LiquidRevealClipper extends CustomClipper<Path> {
  final double progress;
  final RevealOrigin origin;

  _LiquidRevealClipper({required this.progress, required this.origin});

  @override
  Path getClip(Size size) {
    final path = Path();
    final center = _originOffset(size);
    // 半径 = 对角线，保证完全覆盖
    final maxRadius = size.longestSide * 0.8;
    final radius = maxRadius * Curves.easeOutCubic.transform(progress);
    path.addOval(Rect.fromCircle(center: center, radius: radius));
    return path;
  }

  Offset _originOffset(Size size) => switch (origin) {
        RevealOrigin.center => size.center(Offset.zero),
        RevealOrigin.topLeft => Offset.zero,
        RevealOrigin.topRight => Offset(size.width, 0),
        RevealOrigin.bottomLeft => Offset(0, size.height),
        RevealOrigin.bottomRight => Offset(size.width, size.height),
      };

  @override
  bool shouldReclip(_LiquidRevealClipper old) =>
      old.progress != progress || old.origin != origin;
}
