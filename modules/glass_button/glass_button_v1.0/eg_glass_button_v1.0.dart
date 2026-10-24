// eg_glass_button v1.0 · EGD 原子控件：液态玻璃按钮（只管"玻璃按钮质感 + 按压"，不管悬浮/布局）
// 装饰器式：EGDGlassButton(onPressed: ..., child: ...)
// 特性：液态玻璃质感（模糊底 + 高光边 + 内阴影）· 按压缩小回弹
import 'package:flutter/material.dart';

/// 液态玻璃按钮原子件 —— 苹果 iOS 26 液态玻璃风格的按钮。
/// 参数化复刻"五步玻璃"：模糊、增白、叠白、亮边、折射（高光内边）。
class EGDGlassButton extends StatefulWidget {
  final Widget child;

  /// 点击回调
  final VoidCallback? onPressed;

  /// 圆角
  final double borderRadius;

  /// 玻璃模糊强度
  final double blur;

  /// 高光边强度（0 关闭）
  final double highlight;

  /// 内阴影强度（0 关闭）
  final double innerShadow;

  /// 按压缩小倍率（默认 0.94）
  final double pressScale;

  /// 回弹时长
  final Duration snapDuration;

  /// 底色（默认白 55% 透明）
  final Color? fillColor;

  const EGDGlassButton({
    super.key,
    required this.child,
    this.onPressed,
    this.borderRadius = 20,
    this.blur = 24,
    this.highlight = 1.0,
    this.innerShadow = 0.5,
    this.pressScale = 0.94,
    this.snapDuration = const Duration(milliseconds: 200),
    this.fillColor,
  });

  @override
  State<EGDGlassButton> createState() => _EGDGlassButtonState();
}

class _EGDGlassButtonState extends State<EGDGlassButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) {
        setState(() => _pressed = false);
        widget.onPressed?.call();
      },
      onTapCancel: () => setState(() => _pressed = false),
      child: AnimatedScale(
        scale: _pressed ? widget.pressScale : 1.0,
        duration: widget.snapDuration,
        curve: Curves.easeOutBack,
        child: Container(
          decoration: BoxDecoration(
            color: widget.fillColor ?? Colors.white.withValues(alpha: 0.55),
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.6),
              width: 0.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: widget.blur,
                offset: const Offset(0, 8),
              ),
              BoxShadow(
                color: Colors.white.withValues(alpha: widget.highlight),
                blurRadius: 0,
                spreadRadius: 0,
                offset: const Offset(0, 1),
              ),
              BoxShadow(
                color: Colors.black.withValues(alpha: widget.innerShadow * 0.06),
                blurRadius: 4,
                spreadRadius: -2,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius - 1),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
