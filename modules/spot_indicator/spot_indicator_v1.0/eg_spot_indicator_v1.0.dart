// eg_spot_indicator v1.0 · EGD 原子控件：聚焦选框（只管"透明液态玻璃空框 + 放大"，不管布局/动画位移）
// 装饰器式：EGDSpotIndicator(active: true, size: 64, child: ...) 包任意按钮
// 特性：透明液态玻璃圆环 · 选中放大 1.12× · 高光边 · 弹性过渡
import 'package:flutter/material.dart';

/// 聚焦选框原子件 —— 一个透明的液态玻璃"空选框"，用来框住当前选中项。
/// 只负责"空框 + 放大 + 弹性过渡"，位移交给 AnimatedAlign/AnimatedPositioned，
/// 切换逻辑由外层（组合件）控制。
class EGDSpotIndicator extends StatelessWidget {
  final Widget child;

  /// 框体直径（默认 64）
  final double size;

  /// 是否选中（选中时放大 + 高光加强）
  final bool active;

  /// 选中放大倍率（默认 1.12）
  final double activeScale;

  /// 过渡时长（默认 300ms）
  final Duration duration;

  /// 玻璃模糊强度（默认 24）
  final double blur;

  const EGDSpotIndicator({
    super.key,
    required this.child,
    this.size = 64,
    this.active = false,
    this.activeScale = 1.12,
    this.duration = const Duration(milliseconds: 300),
    this.blur = 24,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: active ? activeScale : 1.0,
      duration: duration,
      curve: Curves.easeOutBack,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.55),
          border: Border.all(
            color: active
                ? const Color(0x4000C48C)
                : Colors.white.withValues(alpha: 0.6),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: active ? 0.14 : 0.08),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: active
                  ? const Color(0x3300C48C)
                  : Colors.white.withValues(alpha: 0.9),
              blurRadius: blur,
              spreadRadius: active ? 1 : 0,
            ),
            const BoxShadow(
              color: Colors.white,
              blurRadius: 0,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: ClipOval(child: child),
      ),
    );
  }
}
