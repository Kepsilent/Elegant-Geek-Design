# agents.md — EGD 使用说明（AI 版）

> 本篇提供给 AI 大模型 / 智能体参考，用于正确使用 EGD 设计系统完成界面设计或组件开发。项目概览见 [README.md](README.md)。

---

## 1. 获取资产

- **组件与设计规范全量在本仓库**（无需下载即可阅读源码与 demo）：
  - 核心文档（权威规范）：[Elegant_Geek_Design.md](Elegant_Geek_Design.md)（中文）/ [Elegant_Geek_Design_en.md](Elegant_Geek_Design_en.md)（英文）
  - 本体 Tokens：[EGD/EGD_v1.1/EGD_v1.1.dart](EGD/EGD_v1.1/EGD_v1.1.dart)
  - 全部组件：`modules/<模块>/<模块>_v<版本>/`（原子件 + 组合件，各含 `eg_*_v<版本>.dart` + 双语 changelog + `demo/`）
- **完整便携包**（含第三方资源，供运行 demo 与直接使用）：**[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** 下载最新 `Elegant_Geek_Design_v<版本>.zip`

## 2. 模块体系

**原子控件层 → 组合控件层**：

- 原子件：装饰器式 `EGDXxx(child: ..., 专属参数)`，各做一件事、互不依赖
- 组合件：链式拼装 + 参数透传，只装配不写新逻辑

当前模块（全部 v1.0，除 color v1.0 与 EGD 本体 v1.1）：

| 层级 | 模块 | 组件 | Demo |
| --- | --- | --- | --- |
| 原子 | color | `modules/color/color_v1.0/eg_color_v1.0.dart` | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` |
| 原子 | liquid_glass | `modules/liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart` | `modules/liquid_glass/liquid_glass_v1.0/demo/eg_liquid_glass_v1.0_demo.html` |
| 原子 | drag_swipe | `modules/drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart` | `modules/drag_swipe/drag_swipe_v1.0/demo/eg_drag_swipe_v1.0_demo.html` |
| 原子 | floating_widget | `modules/floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart` | `modules/floating_widget/floating_widget_v1.0/demo/eg_floating_widget_v1.0_demo.html` |
| 原子 | scroll_hide | `modules/scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart` | `modules/scroll_hide/scroll_hide_v1.0/demo/eg_scroll_hide_v1.0_demo.html` |
| 原子 | toggle | `modules/toggle/toggle_v1.0/eg_toggle_v1.0.dart` | `modules/toggle/toggle_v1.0/demo/eg_toggle_v1.0_demo.html` |
| 组合 | floating_nav_bar | `modules/floating_nav_bar/floating_nav_bar_v1.0/eg_floating_nav_bar_v1.0.dart` | `modules/floating_nav_bar/floating_nav_bar_v1.0/demo/eg_floating_nav_bar_v1.0_demo.html` |

## 3. 使用方式

1. **预览效果**：浏览器打开 `demo/*.html`（单文件，页面内中/英切换；完整字体需便携包）
2. **按规范设计**：以核心文档 `Elegant_Geek_Design.md`（中文）为权威规范——色板、玻璃参数、间距、文字、图标规范全部在其中
3. **参照 demo 实现**：组件 demo 是效果的权威参照，据此在目标框架（Flutter 等）实现
4. **组件开发**：新组件按「组件创建手册」（本地 `Component_Creation_Guide.md`）执行命名 / changelog / demo / 迭代规范

## 4. 设计铁律（硬约束）

1. **背景**：浅色纯白 `#FFFFFF`，夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
2. **玻璃**：液态玻璃为默认容器材质，能玻璃化的都玻璃化（blur 6 / 双峰高光 / 顶部亮边）
3. **图标**：禁止 emoji；一律 SVG，优先 Lucide 官方图标
4. **字体**：全层级使用霞鹜文楷（LXGW WenKai）
5. **强调色**：唯一强调色为签名绿 `#00C48C`（深色 `#00D494`）
6. **对比度**：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

## 5. 版本与发布约定

- 版本命名：`v<主>.<次>「命名」`（如 v1.2「原子化重构」）
- 每版本三件套：核心 `.dart` + 双 changelog（`_changelog_zh.md` / `_changelog_en.md`，版本号同步提升）+ `demo/`（单 HTML，中英切换）
- 旧版本直接删除，历史条目并入最新版 changelog
- 组件 / 核心文档 / changelog.json 全量提交到仓库；**Release 只发布一个便携 zip**（EGD 核心 + 自有组件 + 第三方 assets，含原许可证），门面与单独组件不单独发布
- 完整发布规范为内部文件（本地 `RELEASE_GUIDE.md`，不在仓库、不公开）；需要发布时按该手册执行

## 6. 第三方附加

| 附加 | 用途 | 官方链接 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | 设计字体 | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | 图标库 | https://lucide.dev |
