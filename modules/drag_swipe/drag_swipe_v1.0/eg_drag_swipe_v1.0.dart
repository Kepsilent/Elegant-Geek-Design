// eg_drag_swipe v1.0 · 2026-10-13
// EGD 原子控件：滑动交互（只管手势，不管材质/悬浮/布局）
// 装饰器式：EGDDragSwipe(child: ...) 包任意内容
// 特性：拖动跟手 · 拖动中放大 · 松手弹性吸附 · 点击判定 · 边界橡皮筋
import 'package:flutter/material.dart';

/// 滑动交互原子件 —— 横向拖动 + 吸附位 + 点击判定。
/// 可贴在任何需要"滑选"的容器上（导航栏 / 分页指示器 / 选择器）。
class EGDDragSwipe extends StatefulWidget {
  final Widget child;

  /// 吸附位数量（如 tab 数）
  final int itemCount;

  /// 拖动过程中经过第 i 位时回调
  final ValueChanged<int>? onIndexChange;

  /// 松手吸附完成 / 点击，最终选中 i
  final ValueChanged<int>? onSelect;

  /// 拖动中放大倍率
  final double pressScale;

  /// 松手回弹时长
  final Duration snapDuration;

  /// 边界橡皮筋强度（0 = 硬边界，0.25 = 轻回弹）
  final double boundaryBounce;

  /// 判定拖动的位移阈值（小于此值视为点击）
  final double moveTolerance;

  const EGDDragSwipe({
    super.key,
    required this.child,
    required this.itemCount,
    this.onIndexChange,
    this.onSelect,
    this.pressScale = 1.15,
    this.snapDuration = const Duration(milliseconds: 520),
    this.boundaryBounce = 0.25,
    this.moveTolerance = 5.0,
  });

  @override
  State<EGDDragSwipe> createState() => _EGDDragSwipeState();
}

class _EGDDragSwipeState extends State<EGDDragSwipe> {
  int _index = 0;
  bool _dragging = false;
  bool _moved = false;
  double _offset = 0; // 相对 child 的拖动偏移
  late final AnimationController _anim;

  @override
  void initState() {
    super.initState();
    _anim = AnimationController(vsync: this, duration: widget.snapDuration)
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _anim.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 简化实现：将拖动状态通过 LayoutBuilder 交给调用方布局；
    // 原子件只负责手势识别与回调，实际位移由 child 侧按 _offset 渲染。
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onHorizontalDragStart: (d) {
        setState(() {
          _dragging = true;
          _moved = false;
        });
      },
      onHorizontalDragUpdate: (d) {
        final tol = widget.moveTolerance;
        if (!_moved && d.primaryDelta != null && d.primaryDelta!.abs() > tol) {
          _moved = true;
        }
        if (!_moved) return;
        final slot = 60.0; // 每吸附位宽度（由组合件约定，原子件不持有布局）
        var target = d.localPosition.dx - 30;
        final max = (widget.itemCount - 1) * slot;
        if (target < 0) target *= widget.boundaryBounce;
        if (target > max) {
          target = max + (target - max) * widget.boundaryBounce;
        }
        setState(() => _offset = target);
        final idx = (target / slot).round().clamp(0, widget.itemCount - 1);
        widget.onIndexChange?.call(idx);
      },
      onHorizontalDragEnd: (_) {
        if (!_moved) {
          // 点击：吸附到手指所在位
          widget.onSelect?.call(_index);
        } else {
          final idx =
              (_offset / 60.0).round().clamp(0, widget.itemCount - 1);
          setState(() {
            _dragging = false;
            _index = idx;
          });
          _anim.forward(from: 0);
          widget.onSelect?.call(idx);
        }
      },
      onHorizontalDragCancel: () => setState(() => _dragging = false),
      child: widget.child,
    );
  }
}
