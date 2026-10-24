// eg_spot v1.0 · EGD 原子控件：悬浮圆钮（只管"圆形按钮 + 按压反馈"，不管材质/悬浮定位）
// 装饰器式：EGDSpot(size: 56, child: icon, onTap: ...) 包任意图标/内容
// 特性：圆形裁切 · 按压放大 1.08× · 松手回弹 · 点击回调
import 'package:flutter/material.dart';

/// 悬浮圆钮原子件 —— 一个带按压反馈的圆形按钮基座。
/// 只负责"圆 + 按压放大 + 回弹 + 点击"，材质交给 EGDLiquidGlass 包裹，
/// 悬浮定位交给 EGDFloatingWidget，拖动交给 EGDDragSwipe。
class EGDSpot extends StatefulWidget {
  final Widget child;

  /// 直径（默认 56）
  final double size;

  /// 按压放大倍率（默认 1.08）
  final double pressScale;

  /// 回弹动画时长（默认 220ms）
  final Duration snapDuration;

  /// 点击回调
  final VoidCallback? onTap;

  const EGDSpot({
    super.key,
    required this.child,
    this.size = 56,
    this.pressScale = 1.08,
    this.snapDuration = const Duration(milliseconds: 220),
    this.onTap,
  });

  @override
  State<EGDSpot> createState() => _EGDSpotState();
}

class _EGDSpotState extends State<EGDSpot> {
  bool _pressed = false;

  void _down(_) {
    if (_pressed) return;
    setState(() => _pressed = true);
  }

  void _up(_) {
    if (!_pressed) return;
    setState(() => _pressed = false);
    widget.onTap?.call();
  }

  void _cancel(_) {
    if (!_pressed) return;
    setState(() => _pressed = false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _down,
      onTapUp: _up,
      onTapCancel: _cancel,
      child: AnimatedScale(
        scale: _pressed ? widget.pressScale : 1.0,
        duration: widget.snapDuration,
        curve: Curves.easeOutBack,
        child: SizedBox(
          width: widget.size,
          height: widget.size,
          child: ClipOval(child: widget.child),
        ),
      ),
    );
  }
}
