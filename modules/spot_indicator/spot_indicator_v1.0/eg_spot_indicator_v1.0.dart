// eg_spot_indicator v1.0 · EGD 原子控件：聚焦选框（只管"透明液态玻璃空框 + 放大"，不管布局/动画位移）
// 装饰器式：EGDSpotIndicator(active: true, size: 64, child: ...) 包任意按钮
// 特性：透明液态玻璃（无描边）· 背景模糊折射 · 顶部内高光 · 选中放大 1.12× · 弹性过渡
import 'dart:ui';
import 'package:flutter/material.dart';

/// 聚焦选框原子件 —— 一个透明的液态玻璃"空选框"，用来框住当前选中项。
/// 没有描边：靠背景模糊 + 高光 + 柔和投影呈现玻璃质感，边缘像透镜一样折射背景。
/// 只负责"空框 + 放大 + 弹性过渡"，位移交给 AnimatedAlign/AnimatedPositioned，
/// 切换逻辑由外层（组合件）控制。
class EGDSpotIndicator extends StatelessWidget {
  final Widget child;

  /// 框体直径（默认 64）
  final double size;

  /// 是否选中（选中时放大 + 高光加强 + 淡淡翠绿光晕）
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
      child: ClipOval(
        // 玻璃底：模糊背景，产生折射感
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: active ? 0.16 : 0.10),
              boxShadow: [
                // 顶部内高光：玻璃厚度
                BoxShadow(
                  color: Colors.white.withValues(alpha: 0.6),
                  blurRadius: 1,
                  offset: const Offset(0, -1),
                ),
                // 底部内反光
                BoxShadow(
                  color: Colors.white.withValues(alpha: 0.12),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
                // 柔和外投影
                BoxShadow(
                  color: Colors.black.withValues(alpha: active ? 0.12 : 0.07),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
                // 选中态淡淡翠绿光晕（非描边）
                if (active)
                  const BoxShadow(
                    color: Color(0x2200C48C),
                    blurRadius: 26,
                    spreadRadius: 1,
                  ),
              ],
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
