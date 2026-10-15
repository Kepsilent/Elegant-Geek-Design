// eg_floating_nav_bar v1.0 · 2026-10-13
// EGD 组合控件：悬浮导航栏（只装配，不写新逻辑）
// 组合 = EGDFloatingWidget（悬浮） + EGDLiquidGlass（玻璃） + EGDDragSwipe（拖动）
//      + EGDScrollHide（可选，滚动折叠） + EGDToggle（可选，功能开关）
// 全部原子件拼装，config 控制每个功能层的启用/禁用（关闭 = 该层不进渲染树）
import 'package:flutter/material.dart';
import 'package:eg_liquid_glass/eg_liquid_glass_v1.0.dart';
import 'package:eg_drag_swipe/eg_drag_swipe_v1.0.dart';
import 'package:eg_floating_widget/eg_floating_widget_v1.0.dart';
import 'package:eg_scroll_hide/eg_scroll_hide_v1.0.dart';

/// 组合件配置开关 —— 每个功能层可独立启用/禁用
class FloatingNavConfig {
  final bool glass;      // 液态玻璃层
  final bool drag;       // 滑动交互层
  final bool floating;   // 悬浮层
  final bool scrollHide; // 滚动折叠层（需外部滚动控制器）

  const FloatingNavConfig({
    this.glass = true,
    this.drag = true,
    this.floating = true,
    this.scrollHide = false,
  });
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

/// 悬浮导航栏组合件 —— 只做原子件拼装与参数透传，不含新交互逻辑。
class EGDFloatingNavBar extends StatefulWidget {
  final List<EGDTab> tabs;
  final FloatingNavConfig config;
  final ScrollController? scrollController;

  const EGDFloatingNavBar({
    super.key,
    required this.tabs,
    this.config = const FloatingNavConfig(),
    this.scrollController,
  });

  @override
  State<EGDFloatingNavBar> createState() => _EGDFloatingNavBarState();
}

class _EGDFloatingNavBarState extends State<EGDFloatingNavBar> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // 1) 内容层：tab 布局 + 选中态
    Widget content = Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.tabs.length, (i) {
        final t = widget.tabs[i];
        final active = i == _index;
        return GestureDetector(
          onTap: () => setState(() => _index = i),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                active ? (t.activeIcon ?? t.icon) : t.icon,
                const SizedBox(height: 2),
                Text(
                  t.label,
                  style: TextStyle(
                    fontSize: 10,
                    color: active
                        ? const Color(0xFF007A55)
                        : const Color(0xFFAEAEB2),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );

    // 2) 可选：滚动折叠层（最外层先包，内容滚动时隐藏整条导航栏）
    if (widget.config.scrollHide && widget.scrollController != null) {
      content = EGDScrollHide(
        controller: widget.scrollController!,
        child: content,
      );
    }

    // 3) 可选：滑动交互层
    if (widget.config.drag) {
      content = EGDDragSwipe(
        itemCount: widget.tabs.length,
        onSelect: (i) => setState(() => _index = i),
        child: content,
      );
    }

    // 4) 可选：液态玻璃层
    if (widget.config.glass) {
      content = EGDLiquidGlass(borderRadius: 24, child: content);
    }

    // 5) 可选：悬浮层
    if (widget.config.floating) {
      content = EGDFloatingWidget(
        position: FloatingPosition.bottomCenter,
        offset: const EdgeInsets.only(bottom: 16),
        child: content,
      );
    }

    return content;
  }
}
