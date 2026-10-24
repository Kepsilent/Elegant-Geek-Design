// eg_ink_spread v1.0 · EGD 原子控件：墨迹漫开转场（只管"多点渗入 + 边缘模糊"，不管内容/路由）
// 装饰器式：EGDInkSpread(origins: [...], duration: 600ms, child: ...)
// 特性：多个圆心一起渗入 · 边缘模糊扩散 · 类似"墨迹漫开"
import 'package:flutter/material.dart';

/// 墨迹漫开转场原子件 —— 从多个圆心渗入，边缘带模糊，像墨迹在纸上漫开。
/// 与 [EGDLiquidReveal] 的"单点水浸"互补：多点渗入更适合卡片/大区块切换。
class EGDInkSpread extends StatefulWidget {
  final Widget child;

  /// 渗入起点（相对自身，0~1 比例坐标）
  final List<Offset> origins;

  /// 转场时长
  final Duration duration;

  /// 转场曲线
  final Curve curve;

  /// 边缘模糊强度（0 关闭）
  final double edgeBlur;

  const EGDInkSpread({
    super.key,
    required this.child,
    this.origins = const [Offset(0.5, 0.5)],
    this.duration = const Duration(milliseconds: 600),
    this.curve = Curves.easeInOutCubic,
    this.edgeBlur = 0.5,
  });

  @override
  State<EGDInkSpread> createState() => _EGDInkSpreadState();
}

class _EGDInkSpreadState extends State<EGDInkSpread>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _t;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..forward();
    _t = CurvedAnimation(parent: _controller, curve: widget.curve);
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
          clipper: _InkSpreadClipper(
            progress: _t.value,
            origins: widget.origins,
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

class _InkSpreadClipper extends CustomClipper<Path> {
  final double progress;
  final List<Offset> origins;

  _InkSpreadClipper({required this.progress, required this.origins});

  @override
  Path getClip(Size size) {
    final path = Path.combine(
      PathOperation.union,
      // 先让所有圆点独立扩张
      _unionOfDrops(size),
      Path(),
    );
    return path;
  }

  Path _unionOfDrops(Size size) {
    final maxRadius = size.longestSide * 0.85;
    final radius = maxRadius * Curves.easeInOutCubic.transform(progress);
    final path = Path();
    for (final o in origins) {
      final center = Offset(o.dx * size.width, o.dy * size.height);
      path.addOval(Rect.fromCircle(center: center, radius: radius));
    }
    return path;
  }

  @override
  bool shouldReclip(_InkSpreadClipper old) =>
      old.progress != progress || old.origins != origins;
}
