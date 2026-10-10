// eg_floating_nav v1.1「方圆形居中」· 2026-10-10
// EGD 悬浮液态玻璃导航栏核心组件（Flutter）
// 基于 liquid_glass_widgets（MIT）：GlassScaffold + GlassTabBar.bottom
// 选中指示器为库自带方圆形（squircle），全端（Android/iOS/桌面/Web）可用
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class EGDGlass {
  static const double blur = 6;
  static const double thickness = 30;
  static const Color accent = Color(0xFF00C48C);
  static const Color accentDark = Color(0xFF00D494);
}

class EGDTab {
  final Widget icon;
  final Widget activeIcon;
  final String label;
  final Widget page;

  const EGDTab({
    required this.icon,
    required this.label,
    required this.page,
    this.activeIcon,
  });
}

class EGDFloatingNav extends StatefulWidget {
  final List<EGDTab> tabs;
  final GlassQuality quality;
  final double indicatorExpansion;

  const EGDFloatingNav({
    super.key,
    required this.tabs,
    this.quality = GlassQuality.standard,
    this.indicatorExpansion = 0.15,
  });

  @override
  State<EGDFloatingNav> createState() => _EGDFloatingNavState();
}

class _EGDFloatingNavState extends State<EGDFloatingNav> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accent = isDark ? EGDGlass.accentDark : EGDGlass.accent;

    return GlassScaffold(
      background: ColoredBox(
        color: isDark ? Colors.black : Colors.white,
        child: widget.tabs[_index].page,
      ),
      statusBarStyle: GlassStatusBarStyle.auto,
      theme: GlassThemeData(
        light: GlassThemeVariant(
          settings: GlassThemeSettings(
            blur: EGDGlass.blur,
            thickness: EGDGlass.thickness,
          ),
          quality: widget.quality,
          glowColors: GlassGlowColors(
            primary: accent,
            glowBlurRadius: 12,
            glowOpacity: 0.8,
          ),
        ),
        dark: GlassThemeVariant(
          settings: GlassThemeSettings(
            blur: EGDGlass.blur,
            thickness: EGDGlass.thickness,
          ),
          quality: widget.quality,
          glowColors: GlassGlowColors(
            primary: accent,
            glowBlurRadius: 12,
            glowOpacity: 0.8,
          ),
        ),
      ),
      bottomBar: GlassTabBar.bottom(
        adaptiveBrightness: true,
        tabs: List.generate(widget.tabs.length, (i) {
          final t = widget.tabs[i];
          return GlassTab(
            icon: i == _index ? (t.activeIcon ?? t.icon) : t.icon,
            label: t.label,
            selected: i == _index,
          );
        }),
        selectedIndex: _index,
        onTabSelected: (i) => setState(() => _index = i),
        indicatorExpansion: widget.indicatorExpansion,
      ),
    );
  }
}
