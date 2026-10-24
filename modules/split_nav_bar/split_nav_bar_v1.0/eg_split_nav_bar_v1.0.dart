// eg_split_nav_bar v1.0 · EGD 组合控件：分离式悬浮导航栏（原子拼装）
// 拼装：EGDSpot × 2 + EGDSpotIndicator（跨屏弹性跟随）+ EGDLiquidGlass（材质）
// 可选项：EGDScrollHide（滚动折叠）、EGDToggle（开关控制）
// 特性：左右两个圆形按钮 · 选中"空选框"跨屏弹性移动 · 纯拼装不写新逻辑（位移除外）
import 'package:flutter/material.dart';
import '../../spot/spot_v1.0/eg_spot_v1.0.dart';
import '../../spot_indicator/spot_indicator_v1.0/eg_spot_indicator_v1.0.dart';
import '../../liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart';

/// 分离式导航栏配置（逐层开关，关闭 = 该层不进渲染树）
class SplitNavConfig {
  /// 玻璃材质层
  final bool glass;

  /// 指示器层（空选框）
  final bool indicator;

  /// 玻璃模糊
  final double blur;

  /// 按钮直径
  final double spotSize;

  /// 指示器直径
  final double indicatorSize;

  /// 底部边距
  final double bottomOffset;

  /// 左右边距
  final double sideOffset;

  const SplitNavConfig({
    this.glass = true,
    this.indicator = true,
    this.blur = 24,
    this.spotSize = 56,
    this.indicatorSize = 64,
    this.bottomOffset = 24,
    this.sideOffset = 24,
  });
}

/// 分离式悬浮导航栏组合件 —— 左右各一个圆钮，当前选中项上浮一个液态玻璃空选框。
/// 受控：外部持有 [selectedIndex] / [onIndexChanged]。
/// 空选框用 AnimatedPositioned 在左右两个钮之间跨屏弹性移动。
class EGDSplitNavBar extends StatelessWidget {
  final List<Widget> items;
  final int selectedIndex;
  final ValueChanged<int>? onIndexChanged;
  final SplitNavConfig config;
  final bool indicatorActive;

  const EGDSplitNavBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onIndexChanged,
    this.config = const SplitNavConfig(),
    this.indicatorActive = true,
  }) : assert(items.length == 2, 'EGDSplitNavBar 仅支持两个导航项');

  @override
  Widget build(BuildContext context) {
    final c = config;
    final double screenW = MediaQuery.sizeOf(context).width;
    final double barW = screenW - c.sideOffset * 2;

    // 两个圆钮：各自悬浮在底部左右两侧
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // 左钮
        Positioned(
          left: c.sideOffset,
          bottom: c.bottomOffset,
          child: _buildSpot(items[0], 0, c),
        ),
        // 右钮
        Positioned(
          right: c.sideOffset,
          bottom: c.bottomOffset,
          child: _buildSpot(items[1], 1, c),
        ),
        // 空选框：水滴放大镜——跨屏弹性移动，内部放大显示选中项（1.3×）
        if (c.indicator)
          AnimatedPositioned(
            left: c.sideOffset +
                c.spotSize / 2 -
                c.indicatorSize / 2 +
                selectedIndex * (barW - c.spotSize),
            bottom: c.bottomOffset + (c.spotSize - c.indicatorSize) / 2,
            duration: const Duration(milliseconds: 420),
            curve: Curves.easeOutBack,
            child: EGDSpotIndicator(
              size: c.indicatorSize,
              active: indicatorActive,
              child: Transform.scale(
                scale: 1.3,
                child: items[selectedIndex],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSpot(Widget child, int index, SplitNavConfig c) {
    Widget spot = EGDSpot(
      size: c.spotSize,
      onTap: () => onIndexChanged?.call(index),
      child: child,
    );

    // 玻璃材质层（可关）
    if (c.glass) {
      spot = EGDLiquidGlass(
        blur: c.blur,
        borderRadius: c.spotSize / 2,
        child: spot,
      );
    }
    return spot;
  }
}
