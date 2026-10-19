// eg_floating_nav_bar v1.0 · EGD 组合控件：悬浮导航栏（只装配 + 参数透传，不写新逻辑）
// 拼装链（外 → 内）：EGDScrollHide（可选）→ EGDDragSwipe（可选）
//                  → EGDLiquidGlass（可选）→ EGDFloatingWidget（可选）
// 选中态受控：selectedIndex / onIndexChanged 由外部持有，组合件不自管状态机。
import 'package:flutter/material.dart';
import '../../liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart';
import '../../drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart';
import '../../floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart';
import '../../scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart';

/// 组合件配置开关 —— 每个原子层可独立启用/禁用（关闭 = 该层不进渲染树）
class FloatingNavConfig {
  final bool glass;       // 液态玻璃层
  final bool drag;        // 滑动交互层
  final bool floating;    // 悬浮层
  final bool scrollHide;  // 滚动折叠层（需外部滚动控制器）

  /// 透传：玻璃圆角
  final double glassRadius;

  /// 透传：悬浮位置 / 边距
  final FloatingPosition floatingPosition;
  final EdgeInsets floatingOffset;

  /// 透传：拖动吸附位宽（与 tab 宽一致）
  final double dragSlotWidth;

  const FloatingNavConfig({
    this.glass = true,
    this.drag = true,
    this.floating = true,
    this.scrollHide = false,
    this.glassRadius = 24,
    this.floatingPosition = FloatingPosition.bottomCenter,
    this.floatingOffset = const EdgeInsets.only(bottom: 16),
    this.dragSlotWidth = 56,
  });
}

/// 单个示例 tab（内容由调用方传入，组合件不造业务语义）
class EGDTab {
  final Widget icon;
  final Widget? activeIcon;
  final String label;
  final Widget? page;

  const EGDTab({
    required this.icon,
    required this.label,
    this.activeIcon,
    this.page,
  });
}

/// 悬浮导航栏组合件 —— 只把已存在的原子件串起来并透传参数。
class EGDFloatingNavBar extends StatelessWidget {
  final List<EGDTab> tabs;
  final FloatingNavConfig config;
  final ScrollController? scrollController;

  /// 受控选中位（外部持有）
  final int selectedIndex;
  final ValueChanged<int>? onIndexChanged;

  const EGDFloatingNavBar({
    super.key,
    required this.tabs,
    this.config = const FloatingNavConfig(),
    this.scrollController,
    this.selectedIndex = 0,
    this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    // 1) 内容层：只组装传入的 tab（图标 + 文字），点击/拖动统一上报，不自管选中态
    Widget content = Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(tabs.length, (i) {
        final t = tabs[i];
        final active = i == selectedIndex;
        return GestureDetector(
          onTap: () => onIndexChanged?.call(i),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                active ? (t.activeIcon ?? t.icon) : t.icon,
                const SizedBox(height: 2),
                Text(t.label),
              ],
            ),
          ),
        );
      }),
    );

    // 2) 可选：滚动折叠层（最外层，内容滚动时隐藏整条导航栏）
    if (config.scrollHide && scrollController != null) {
      content = EGDScrollHide(controller: scrollController!, child: content);
    }

    // 3) 可选：滑动交互层
    if (config.drag) {
      content = EGDDragSwipe(
        itemCount: tabs.length,
        slotWidth: config.dragSlotWidth,
        onSelect: onIndexChanged,
        child: content,
      );
    }

    // 4) 可选：液态玻璃层（圆角透传）
    if (config.glass) {
      content = EGDLiquidGlass(borderRadius: config.glassRadius, child: content);
    }

    // 5) 可选：悬浮层（位置 / 边距透传）
    if (config.floating) {
      content = EGDFloatingWidget(
        position: config.floatingPosition,
        offset: config.floatingOffset,
        child: content,
      );
    }

    return content;
  }
}
