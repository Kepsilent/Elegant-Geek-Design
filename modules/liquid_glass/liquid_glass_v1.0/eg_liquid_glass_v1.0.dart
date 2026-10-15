// eg_liquid_glass v1.0 · 2026-10-13
// EGD 原子控件：液态玻璃折射（只管材质，不管悬浮/手势/布局）
// 装饰器式：EGDLiquidGlass(child: ...) 包任意内容
// 特性：blur 模糊 · 双峰高光 · 顶部亮边 · 折射 · 深浅双主题
import 'package:flutter/material.dart';

/// 液态玻璃材质原子件 —— 只负责"玻璃怎么渲染"。
/// 可贴在任何控件上（导航栏 / 按钮 / 卡片 / sheet / toast）。
class EGDLiquidGlass extends StatelessWidget {
  final Widget child;

  /// 模糊强度（默认 24，EGD 铁律）
  final double blur;

  /// 玻璃底色；null = 自动取浅色 rgba(255,255,255,0.55) / 深色 rgba(28,28,30,0.6)
  final Color? tint;

  /// 双峰高光（顶部渐变 + 内高光）
  final bool highlight;

  /// 顶部亮边
  final bool topEdge;

  /// 折射效果（内容边缘轻微反光）
  final bool refraction;

  /// 圆角
  final double borderRadius;

  const EGDLiquidGlass({
    super.key,
    required this.child,
    this.blur = 24.0,
    this.tint,
    this.highlight = true,
    this.topEdge = true,
    this.refraction = true,
    this.borderRadius = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final base = tint ??
        (isDark
            ? const Color(0x991C1C1E) // rgba(28,28,30,0.6)
            : const Color(0x8CFFFFFF)); // rgba(255,255,255,0.55)

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          // 顶部亮边（inset 高光）
          if (topEdge)
            BoxShadow(
              color: isDark
                  ? const Color(0x33FFFFFF)
                  : const Color(0xF2FFFFFF),
              blurRadius: 0,
              spreadRadius: 0,
              offset: const Offset(0, -0.5),
            ),
          // 外阴影（玻璃浮起）
          BoxShadow(
            color: isDark
                ? const Color(0x33000000)
                : const Color(0x1F000000),
            blurRadius: 32,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // 玻璃底色
              ColoredBox(color: base),
              // 双峰高光：上半渐变高光 + 底部弱光
              if (highlight)
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x80FFFFFF),
                        Color(0x00000000),
                        Color(0x0AFFFFFF),
                      ],
                      stops: [0.0, 0.55, 1.0],
                    ),
                  ),
                ),
              if (refraction)
                IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(borderRadius),
                      border: Border.all(
                        color: isDark
                            ? const Color(0x1FFFFFFF)
                            : const Color(0x14000000),
                      ),
                    ),
                  ),
                ),
              Center(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
