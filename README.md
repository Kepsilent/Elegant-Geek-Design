# Elegant Geek Design（EGD）

> 纯白为底 · 玻璃为质 · 翠绿为魂 —— 优雅与极客的平衡
>
> 跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）
>
> **English**：[English](README_en.md)

---

## 它是什么

EGD 是一套跨平台自适应设计系统：**原子控件层（基层基座）→ 组合控件层（在原子件上搭）**。设计规范 + 组件代码 + 可预览 demo 全部在本仓库；完整便携包（含第三方资源）经 Release 分发。

**四大支柱**：

1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题
2. **Floating Nav 悬浮导航**：组合件 = 悬浮 + 液态玻璃 + 拖动 + 滚动折叠 + 功能开关
3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji
4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用

## 如何使用

**AI 智能体使用说明见 [agents.md](agents.md)。**

- **完整便携包**（推荐）：到 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** 下载最新 `Elegant_Geek_Design_v<版本>.zip`，一键解压即用——含核心文档（中英）+ 全部组件（dart + changelog + demo）+ 第三方资源（霞鹜文楷 / Lucide，附原许可证）
- **在线预览**：点下方任一 demo 直接在浏览器查看（GitHub Pages，页面内中/英切换）；组件源码与设计规范就在对应目录

## 组件展示（Demo 预览）

在线预览由 GitHub Pages 提供，点击即渲染；组件源码列指向仓库内文件。

| 组件 | 层级 | 版本 | Demo 在线预览 | 组件源码 |
| --- | --- | --- | --- | --- |
| 基地演示 EGD | 本体 | v1.1 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/EGD/EGD_v1.1/demo/EGD_v1.1_demo.html) | [EGD_v1.1.dart](EGD/EGD_v1.1/EGD_v1.1.dart) |
| color 颜色风格 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/color/color_v1.0/demo/eg_color_v1.0_demo.html) | [eg_color_v1.0.dart](modules/color/color_v1.0/eg_color_v1.0.dart) |
| liquid_glass 液态玻璃 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/liquid_glass/liquid_glass_v1.0/demo/eg_liquid_glass_v1.0_demo.html) | [eg_liquid_glass_v1.0.dart](modules/liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart) |
| drag_swipe 滑动交互 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/drag_swipe/drag_swipe_v1.0/demo/eg_drag_swipe_v1.0_demo.html) | [eg_drag_swipe_v1.0.dart](modules/drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart) |
| floating_widget 悬浮控件 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/floating_widget/floating_widget_v1.0/demo/eg_floating_widget_v1.0_demo.html) | [eg_floating_widget_v1.0.dart](modules/floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart) |
| scroll_hide 滚动折叠 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/scroll_hide/scroll_hide_v1.0/demo/eg_scroll_hide_v1.0_demo.html) | [eg_scroll_hide_v1.0.dart](modules/scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart) |
| toggle 功能开关 | 原子 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/toggle/toggle_v1.0/demo/eg_toggle_v1.0_demo.html) | [eg_toggle_v1.0.dart](modules/toggle/toggle_v1.0/eg_toggle_v1.0.dart) |
| floating_nav_bar 悬浮导航栏 | 组合 | v1.0 | [在线预览](https://kepsilent.github.io/Elegant-Geek-Design/modules/floating_nav_bar/floating_nav_bar_v1.0/demo/eg_floating_nav_bar_v1.0_demo.html) | [eg_floating_nav_bar_v1.0.dart](modules/floating_nav_bar/floating_nav_bar_v1.0/eg_floating_nav_bar_v1.0.dart) |

> 提示：demo 完整字体效果需下载便携包（含霞鹜文楷 ttf）；Pages 在线预览时字体回退为系统字体，交互不受影响。

## 设计约束（铁律）

- 背景浅色纯白 `#FFFFFF`、夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
- 液态玻璃为默认容器材质，能玻璃化的都玻璃化
- 禁 emoji 图标；图标一律 SVG（Lucide 风格）
- 对比度：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）
