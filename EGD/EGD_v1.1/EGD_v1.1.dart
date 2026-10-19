// EGD v1.1「设计系统本体」· 设计系统核心 Tokens（Flutter）
// 纯白为底，玻璃为质，翠绿为魂。跨平台自适应。
// 使用：import 'EGD_v1.1.dart' → EGDGlass.* / EGDSpace.* / EGDText.*
// 色板（EGDColor）唯一权威源在 modules/color/eg_color_v1.0.dart，本文件不重复定义。
library egd;

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
