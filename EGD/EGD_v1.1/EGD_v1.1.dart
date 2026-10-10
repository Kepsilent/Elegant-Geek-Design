// EGD v1.1「设计系统本体」· 2026-10-10
// Elegant Geek Design 设计系统核心 Tokens（Flutter）
// 纯白为底，玻璃为质，翠绿为魂。跨平台自适应。
// 使用：import 'EGD_v1.1.dart' → EGDColor.* / EGDGlass.* / EGDSpace.* / EGDText.*
library egd;

/// 色板 Tokens（与 modules/color 模块同源）
class EGDColor {
  // 签名绿 Accent
  static const Color accent = Color(0xFF00C48C);
  static const Color accentDark = Color(0xFF00D494);
  static const Color accentText = Color(0xFF007A55);      // 白底文字 5.36:1
  static const Color accentStrong = Color(0xFF00855C);    // 白字底衬 4.66:1
  static const Color accentLight = Color(0xFFE6F9F1);

  // 中性色 Neutral（纯白 / 纯黑为底）
  static const Color bgLight = Color(0xFFFFFFFF);
  static const Color bgDark = Color(0xFF000000);
  static const Color textPrimary = Color(0xFF1D1D1F);
  static const Color textSecondary = Color(0xFF6E6E73);
  static const Color textTertiary = Color(0xFFAEAEB2);

  // 玻璃 Glass
  static const Color glassBgLight = Color(0x8CFFFFFF);    // rgba(255,255,255,.55)
  static const Color glassBgDark = Color(0x991C1C1E);     // rgba(28,28,30,.6)
  static const Color glassBorder = Color(0x14000000);     // rgba(0,0,0,.08)
  static const Color glassHighlight = Color(0xF2FFFFFF);  // inset 顶部亮边
}

/// 玻璃材质参数（液态玻璃：模糊 + 折射 + 双峰高光）
class EGDGlass {
  static const double blur = 6;
  static const double thickness = 30;
  static const double radiusNav = 24;
  static const double radiusCard = 18;
  static const double radiusControl = 16;
}

/// 间距与圆角阶梯
class EGDSpace {
  static const double xxs = 4;
  static const double xs = 8;
  static const double sm = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
}

/// 字号阶梯（霞鹜文楷 LXGW WenKai 渲染）
class EGDText {
  static const double caption = 10;
  static const double bodySm = 13;
  static const double body = 14;
  static const double title = 18;
  static const double display = 22;
}
