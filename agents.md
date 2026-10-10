# agents.md — EGD 使用说明（AI 版）

> 本篇提供给 AI 大模型 / 智能体参考，用于正确使用 EGD 设计系统完成界面设计或组件开发。项目概览见 [README.md](README.md)。

---

## 1. 获取资产

全部资产在 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**：可单个下载原文件，或直接下完整便携包 `Elegant_Geek_Design_v1.1.zip` 解压即用。

| 文件 | 说明 | 解压后引用 |
| --- | --- | --- |
| `EGD_v1.1.dart` | 设计系统核心 Tokens | `EGD_v1.1/EGD_v1.1.dart` |
| `eg_color_v1.0.dart` | 色板模块 | `color_v1.0/eg_color_v1.0.dart` |
| `eg_floating_nav_v1.1.dart` | 悬浮液态玻璃导航栏模块 | `floating_nav_v1.1/eg_floating_nav_v1.1.dart` |
| `Elegant_Geek_Design.md` | 统筹文档（中文核心） | — |
| `Elegant_Geek_Design_en.md` | 统筹文档（英文版） | — |
| `eg_*_demo.html` | 各模块中英文预览 | 浏览器直接打开 |

## 2. 模块引用

每个模块是独立 `.dart`，拷入目标工程后 `import` 即用：

| 模块 | 引用 | 提供 |
| --- | --- | --- |
| 设计系统核心 | `import 'EGD_v1.1/EGD_v1.1.dart';` | `EGDColor.*` 色板、`EGDGlass.*` 玻璃、`EGDSpace.*` 间距、`EGDText.*` 文字 |
| 色板 | `import 'color_v1.0/eg_color_v1.0.dart';` | `EGDColor.*` 全部色值常量 |
| 悬浮导航栏 | `import 'floating_nav_v1.1/eg_floating_nav_v1.1.dart';` | `EGDFloatingNav` 组件（液态玻璃、跟手拖动、点击切换） |

## 3. 设计铁律（硬约束）

1. **背景**：浅色纯白 `#FFFFFF`，夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
2. **玻璃**：液态玻璃为默认容器材质，能玻璃化的都玻璃化（blur 6 / 双峰高光 / 顶部亮边）
3. **图标**：禁止 emoji；一律 SVG，优先 Lucide 官方图标
4. **字体**：全层级使用霞鹜文楷（LXGW WenKai）
5. **强调色**：唯一强调色为签名绿 `#00C48C`（深色 `#00D494`）
6. **对比度**：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

## 4. 版本与发布约定

- 版本文件夹命名：`<模块名>_v<版本>/`（如 `floating_nav_v1.1/`）
- 版本命名：`v<主>.<次>「命名」`（如 v1.1「方圆形居中」）
- 每版本三件套：核心 `.dart` + 双语 `_changelog.md`（中文上 / 英文下）+ `demo/`（中英两份 HTML）
- 旧版本直接删除，历史条目并入最新版 changelog
- 资产全部通过 Releases 分发

## 5. 第三方附加

| 附加 | 用途 | 官方链接 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | 设计字体 | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | 图标库 | https://lucide.dev |

---

# agents.md — EGD Handbook (AI Edition)

> This guide is provided for AI models / agents to use the EGD design system correctly. Project overview: [README_en.md](README_en.md).

## 1. Get Assets

Everything lives in **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** — download raw files individually, or grab the portable bundle `Elegant_Geek_Design_v1.1.zip`.

| File | What | Import after unzip |
| --- | --- | --- |
| `EGD_v1.1.dart` | Design-system core tokens | `EGD_v1.1/EGD_v1.1.dart` |
| `eg_color_v1.0.dart` | Palette module | `color_v1.0/eg_color_v1.0.dart` |
| `eg_floating_nav_v1.1.dart` | Floating nav bar module | `floating_nav_v1.1/eg_floating_nav_v1.1.dart` |
| `Elegant_Geek_Design.md` | Orchestration doc (Chinese) | — |
| `Elegant_Geek_Design_en.md` | Orchestration doc (English) | — |
| `eg_*_demo.html` | ZH/EN previews | open in browser |

## 2. Module Imports

| Module | Import | Provides |
| --- | --- | --- |
| Core tokens | `import 'EGD_v1.1/EGD_v1.1.dart';` | `EGDColor.*`, `EGDGlass.*`, `EGDSpace.*`, `EGDText.*` |
| Palette | `import 'color_v1.0/eg_color_v1.0.dart';` | all `EGDColor.*` constants |
| Floating nav | `import 'floating_nav_v1.1/eg_floating_nav_v1.1.dart';` | `EGDFloatingNav` widget |

## 3. Iron Rules

1. Background: light pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
2. Glass: liquid glass is the default container material — glassify everything (blur 6 / dual-peak highlight / top edge light)
3. Icons: emoji banned; always SVG, prefer official Lucide
4. Font: LXGW WenKai everywhere
5. Accent: single accent signature green `#00C48C` (dark `#00D494`)
6. Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)

## 4. Versioning & Release Conventions

- Version folder: `<module>_v<version>/` (e.g. `floating_nav_v1.1/`)
- Version name: `v<major>.<minor>「name」` (e.g. v1.1 "Squircle Centered")
- Each version ships: core `.dart` + bilingual `_changelog.md` (ZH top / EN bottom) + `demo/` (ZH & EN HTML)
- Old versions: delete, merge history into the latest changelog
- All assets ship via Releases

## 5. Third-Party Add-ons

| Add-on | Purpose | Official Link |
| --- | --- | --- |
| LXGW WenKai | Design font | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | Icon library | https://lucide.dev |
