// eg_sticker v1.0 · EGD 原子控件：贴纸装饰（只管"贴纸质感边框 + 投影"，不管内容）
// 装饰器式：EGDSticker(borderRadius: 18, fluffy: true, child: ...) 包任意图标/卡片
// 特性：贴纸边框 · 软糯投影 · 可选毛绒蓬松质感 · 高光内边
import 'package:flutter/material.dart';

/// 贴纸装饰原子件 —— 给内容套上"贴纸"质感（边框 + 软投影 + 可选毛绒）。
/// 灵感来自抖音流行的 3D 软糯植绒贴纸：边缘微蓬、轻阴影、软糯贴肤。
/// 只做装饰层，内容完全由外部提供。
class EGDSticker extends StatelessWidget {
  final Widget child;

  /// 圆角
  final double borderRadius;

  /// 贴纸边框宽度
  final double borderWidth;

  /// 边框颜色
  final Color borderColor;

  /// 软糯投影强度（0 关闭）
  final double shadowStrength;

  /// 毛绒质感（多层柔和投影模拟蓬松边缘）
  final bool fluffy;

  /// 内高光
  final bool highlight;

  /// 贴纸底色（透明则透出内容）
  final Color? fillColor;

  const EGDSticker({
    super.key,
    required this.child,
    this.borderRadius = 18,
    this.borderWidth = 1,
    this.borderColor = Colors.white,
    this.shadowStrength = 0.18,
    this.fluffy = false,
    this.highlight = true,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    final List<BoxShadow> shadows = [];
    if (shadowStrength > 0) {
      if (fluffy) {
        // 毛绒：多层柔和投影模拟蓬松
        shadows.addAll([
          BoxShadow(
            color: Colors.black.withValues(alpha: shadowStrength * 0.35),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: shadowStrength * 0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: shadowStrength * 0.12),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ]);
      } else {
        shadows.add(
          BoxShadow(
            color: Colors.black.withValues(alpha: shadowStrength),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        );
      }
    }
    if (highlight) {
      shadows.add(const BoxShadow(
        color: Colors.white,
        blurRadius: 0,
        spreadRadius: 0,
        offset: Offset(0, 1),
      ));
    }

    return Container(
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
        boxShadow: shadows,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius - 1),
        child: child,
      ),
    );
  }
}
