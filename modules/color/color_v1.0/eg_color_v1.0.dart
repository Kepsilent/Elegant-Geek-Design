// eg_color v1.0 · EGD 唯一色板（原子件）
// 色板权威源：签名绿系 / 中性色系 / 玻璃色系，浅色 + 深色双主题。
// 其他模块只引用本文件，不重复定义色值。
import 'package:flutter/material.dart';

/// EGD 色板（唯一权威源）
class EGDColor {
  // —— 背景（纯白 / 纯黑为底）——
  static const Color bgLight = Color(0xFFFFFFFF);
  static const Color bgDark = Color(0xFF000000);

  // —— 文字 · 浅色 ——
  static const Color textPrimary = Color(0xFF1D1D1F);
  static const Color textSecondary = Color(0xFF6E6E73);
  static const Color textTertiary = Color(0xFFAEAEB2);

  // —— 文字 · 深色 ——
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFF8E8E93);
  static const Color textTertiaryDark = Color(0xFF636366);

  // —— 签名绿 Accent（唯一强调色）——
  static const Color accent = Color(0xFF00C48C);       // 浅色强调
  static const Color accentDark = Color(0xFF00D494);  // 深色强调
  static const Color accentText = Color(0xFF007A55);  // 白底文字 5.36:1
  static const Color accentStrong = Color(0xFF00855C); // 白字底衬 4.66:1
  static const Color accentLight = Color(0xFFE6F9F1); // 浅绿底衬（浅）
  static const Color accentLightDark = Color(0xFF123327); // 浅绿底衬（深）

  // —— 玻璃 Glass ——
  static const Color glassBgLight = Color(0x8CFFFFFF); // rgba(255,255,255,.55)
  static const Color glassBgDark = Color(0x991C1C1E);  // rgba(28,28,30,.6)
  static const Color glassBorderLight = Color(0x14000000);
  static const Color glassBorderDark = Color(0x1FFFFFFF);
}
