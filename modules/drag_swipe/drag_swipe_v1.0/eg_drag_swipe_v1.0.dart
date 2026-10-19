// eg_drag_swipe v1.0 · EGD 原子控件：滑动交互（只管手势，不管材质/悬浮/布局/视觉）
// 装饰器式：EGDDragSwipe(itemCount: n, slotWidth: w, onSelect: ..., child: ...) 包任意内容
// 特性：拖动跟手（实时输出最近位）· 点击落点判定 · 松手吸附 · 边界橡皮筋
// 说明：atom 只识别手势并输出位，不渲染指示器；视觉（pill/高亮）由 child 侧按回调实现。
import 'package:flutter/material.dart';

/// 滑动交互原子件 —— 横向拖动 + 点击落点 + 吸附位输出。
/// 可贴在任何需要"滑选"的容器上（导航栏 / 分页指示器 / 选择器）。
class EGDDragSwipe extends StatefulWidget {
  final Widget child;

  /// 吸附位数量（如 tab 数）
  final int itemCount;

  /// 每个吸附位宽度（由调用方按布局传入，atom 不持有布局）
  final double slotWidth;

  /// 拖动过程中经过第 i 位时实时回调
  final ValueChanged<int>? onIndexChange;

  /// 松手吸附完成 / 点击，最终选中 i
  final ValueChanged<int>? onSelect;

  /// 边界橡皮筋强度（0 = 硬边界，0.25 = 轻回弹）
  final double boundaryBounce;

  /// 判定拖动的位移阈值（小于此值视为点击）
  final double moveTolerance;

  const EGDDragSwipe({
    super.key,
    required this.child,
    required this.itemCount,
    required this.slotWidth,
    this.onIndexChange,
    this.onSelect,
    this.boundaryBounce = 0.25,
    this.moveTolerance = 5.0,
  });

  @override
  State<EGDDragSwipe> createState() => _EGDDragSwipeState();
}

class _EGDDragSwipeState extends State<EGDDragSwipe> {
  bool _moved = false;
  double _lastDx = 0;

  int _indexAt(double dx) =>
      (dx / widget.slotWidth).floor().clamp(0, widget.itemCount - 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (d) => widget.onSelect?.call(_indexAt(d.localPosition.dx)),
      onHorizontalDragStart: (_) => _moved = false,
      onHorizontalDragUpdate: (d) {
        if (!_moved &&
            d.primaryDelta != null &&
            d.primaryDelta!.abs() > widget.moveTolerance) {
          _moved = true;
        }
        if (!_moved) return;
        _lastDx = d.localPosition.dx;
        // 边界橡皮筋（仅影响输出位，不改变布局）
        var dx = _lastDx;
        final max = (widget.itemCount - 1) * widget.slotWidth;
        if (dx < 0) dx *= widget.boundaryBounce;
        if (dx > max) dx = max + (dx - max) * widget.boundaryBounce;
        final idx =
            (dx / widget.slotWidth).round().clamp(0, widget.itemCount - 1);
        widget.onIndexChange?.call(idx);
      },
      onHorizontalDragEnd: (_) {
        if (!_moved) return;
        final idx = (_lastDx / widget.slotWidth)
            .round()
            .clamp(0, widget.itemCount - 1);
        widget.onSelect?.call(idx);
      },
      child: widget.child,
    );
  }
}
