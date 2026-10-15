// eg_scroll_hide v1.0 · 2026-10-13
// EGD 原子控件：滚动折叠（只管隐藏/展开，不管材质/悬浮/手势）
// 装饰器式：EGDScrollHide(child: ..., controller: ...) 包任意内容
// 特性：上下滑动浏览内容时隐藏/展开 · 方向控制 · 阈值 · 动画
import 'package:flutter/material.dart';

/// 滚动折叠原子件 —— 内容滚动时自动隐藏/展开被包裹控件。
/// 可贴在任何需要"下滑藏、上滑显"的浮层上（导航栏 / 工具栏 / 广告条）。
class EGDScrollHide extends StatefulWidget {
  final Widget child;

  /// 监听内容滚动的控制器（外部传入）
  final ScrollController controller;

  /// 下滑内容时隐藏
  final bool hideOnScrollDown;

  /// 触发隐藏的滚动距离阈值
  final double threshold;

  /// 隐藏/展开动画时长
  final Duration duration;

  /// 状态变化回调（true = 已隐藏）
  final ValueChanged<bool>? onHiddenChanged;

  const EGDScrollHide({
    super.key,
    required this.child,
    required this.controller,
    this.hideOnScrollDown = true,
    this.threshold = 80.0,
    this.duration = const Duration(milliseconds: 300),
    this.onHiddenChanged,
  });

  @override
  State<EGDScrollHide> createState() => _EGDScrollHideState();
}

class _EGDScrollHideState extends State<EGDScrollHide> {
  bool _hidden = false;
  double _lastOffset = 0;
  double _accumulated = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (!widget.controller.hasClients) return;
    final now = widget.controller.offset;
    final delta = now - _lastOffset;
    _lastOffset = now;

    if (!widget.hideOnScrollDown) return;

    if (delta < 0) {
      // 上滑（内容回顶）→ 展开
      _accumulated = 0;
      if (_hidden) _setHidden(false);
    } else if (delta > 0) {
      // 下滑（内容下滚）→ 累计距离，超阈值隐藏
      _accumulated += delta;
      if (!_hidden && _accumulated > widget.threshold) {
        _setHidden(true);
        _accumulated = 0;
      }
    }
  }

  void _setHidden(bool v) {
    if (_hidden == v) return;
    setState(() => _hidden = v);
    widget.onHiddenChanged?.call(v);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: _hidden ? const Offset(0, 1.6) : Offset.zero,
      duration: widget.duration,
      curve: Curves.easeOutCubic,
      child: AnimatedOpacity(
        opacity: _hidden ? 0 : 1,
        duration: widget.duration,
        child: widget.child,
      ),
    );
  }
}
