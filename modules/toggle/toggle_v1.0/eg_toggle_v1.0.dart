// eg_toggle v1.0 · 2026-10-13
// EGD 原子控件：功能开关（只管开关状态与可视化切换，不管被控内容）
// 装饰器式：EGDToggle(child: ..., enabled: ValueNotifier<bool>) 包任意内容
// 特性：开关状态（ValueNotifier 运行期可切）· 可视化开关按钮 · 关闭 = 不渲染被控内容（零开销）
import 'package:flutter/material.dart';

/// 功能开关原子件 —— 控制任意功能的启用/禁用。
///
/// 用法：
/// ```dart
/// final notifier = ValueNotifier<bool>(true);
/// EGDToggle(enabled: notifier, child: myFeature);
/// // 外部任意位置：
/// notifier.value = false; // 立即禁用，myFeature 不进渲染树（零开销）
/// ```
class EGDToggle extends StatelessWidget {
  /// 被开关控制的内容
  final Widget child;

  /// 开关状态（运行期可动态切换）
  final ValueNotifier<bool> enabled;

  /// 状态变化回调
  final ValueChanged<bool>? onChanged;

  /// 是否显示可视化开关按钮（false = 纯逻辑开关，不渲染按钮）
  final bool showSwitch;

  const EGDToggle({
    super.key,
    required this.child,
    required this.enabled,
    this.onChanged,
    this.showSwitch = true,
  });

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).brightness == Brightness.dark
        ? const Color(0xFF00D494)
        : const Color(0xFF00C48C);

    return ValueListenableBuilder<bool>(
      valueListenable: enabled,
      builder: (context, on, _) {
        if (!on) {
          // 关闭：被控内容不渲染，零资源开销
          return const SizedBox.shrink();
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            child,
            if (showSwitch)
              GestureDetector(
                onTap: () {
                  enabled.value = !enabled.value;
                  onChanged?.call(enabled.value);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 52,
                  height: 30,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: on ? accent : const Color(0x26000000),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: AnimatedAlign(
                    duration: const Duration(milliseconds: 200),
                    alignment: on
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
