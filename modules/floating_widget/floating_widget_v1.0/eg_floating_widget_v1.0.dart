// eg_floating_widget v1.0 · EGD 原子控件：悬浮控件（只管悬浮定位，不管材质/手势）
// 装饰器式：EGDFloatingWidget(position: ..., offset: ..., child: ...) 包任意内容
// 特性：悬浮定位（底部居中/角落/顶部）· 边距 · 保持浮层
import 'package:flutter/material.dart';

/// 悬浮位置
enum FloatingPosition {
  bottomCenter,
  bottomLeft,
  bottomRight,
  topCenter,
  topLeft,
  topRight,
}

/// 悬浮控件原子件 —— 只负责"把内容悬浮在指定位置"。
/// 可贴任何内容：导航栏 / 工具栏 / 快捷按钮 / FAB。
class EGDFloatingWidget extends StatelessWidget {
  final Widget child;

  /// 悬浮位置
  final FloatingPosition position;

  /// 边距（相对屏幕边缘）
  final EdgeInsets offset;

  const EGDFloatingWidget({
    super.key,
    required this.child,
    this.position = FloatingPosition.bottomCenter,
    this.offset = const EdgeInsets.only(bottom: 16),
  });

  Alignment _align() => switch (position) {
        FloatingPosition.bottomCenter => Alignment.bottomCenter,
        FloatingPosition.bottomLeft => Alignment.bottomLeft,
        FloatingPosition.bottomRight => Alignment.bottomRight,
        FloatingPosition.topCenter => Alignment.topCenter,
        FloatingPosition.topLeft => Alignment.topLeft,
        FloatingPosition.topRight => Alignment.topRight,
      };

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: _align(),
      child: Padding(padding: offset, child: child),
    );
  }
}
