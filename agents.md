# agents.md — AI 使用手册（Elegant Geek Design / EGD）

> 本文档面向 AI 模型 / Agent / 自动化工具。人类用户请阅读 [README.md](README.md)。
> 你是一个 AI，现在要使用 EGD 设计系统完成界面设计或组件开发——按本手册操作即可。

---

## 1. 获取项目

任选其一：

1. **Git 克隆**（推荐，拿到完整仓库）：
   ```
   git clone https://github.com/Kepsilent/Elegant-Geek-Design.git
   ```
2. **Release 下载**：GitHub Releases 页提供模块级 zip：
   - `eg_color_v1.0.zip`（色板模块）
   - `eg_floating_nav_v1.1.zip`（悬浮液态玻璃导航栏模块）
   - `Elegant_Geek_Design_v1.1.zip`（核心文档 + EGD 本体）

## 2. 仓库结构

```
Elegant Geek Design/
├── Elegant_Geek_Design.md        ← 统筹文档（中文核心：风格理念/模块导航/架构/第三方声明）
├── Elegant_Geek_Design_en.md     ← 统筹文档（英文版）
├── README.md / README_en.md      ← 项目门面（中英）
├── agents.md                     ← 本文件（AI 使用手册）
├── EGD/EGD_v1.1/                 ← 设计系统本体（核心 Tokens）
│   ├── EGD_v1.1.dart             ← 核心 Tokens：EGDColor / EGDGlass / EGDSpace / EGDText
│   ├── EGD_v1.1_changelog.md     ← 双语 CHANGELOG（中文上/英文下）
│   └── demo/                     ← 中英两份 HTML 预览
├── modules/                      ← 自有模块（拼装玩具式，版本文件夹带前缀）
│   ├── color/color_v1.0/         ← eg_color_v1.0.dart + changelog + demo/
│   └── floating_nav/floating_nav_v1.1/ ← eg_floating_nav_v1.1.dart + changelog + demo/
└── assets/
    ├── fonts/lxgw-wenkai/        ← 霞鹜文楷（第三方，OFL 1.1）
    └── icons/lucide/             ← Lucide 图标（第三方，ISC）
```

## 3. 模块引用（拼装玩具式）

每个模块是一个独立 `.dart`，拷进目标工程后 `import` 即用：

| 模块 | 引用 | 提供 |
| --- | --- | --- |
| 设计系统核心 | `import 'EGD/EGD_v1.1/EGD_v1.1.dart';` | `EGDColor.*` 色板、`EGDGlass.*` 玻璃、`EGDSpace.*` 间距、`EGDText.*` 文字 |
| 色板 | `import 'modules/color/color_v1.0/eg_color_v1.0.dart';` | `EGDColor.*` 全部色值常量 |
| 悬浮导航栏 | `import 'modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1.dart';` | `EGDFloatingNav` 组件（液态玻璃、跟手拖动、点击切换） |

## 4. 设计铁律（硬约束，不可违背）

1. **背景**：浅色纯白 `#FFFFFF`，夜间纯黑 `#000000`。不依赖彩色 / 渐变背景
2. **玻璃**：液态玻璃为默认容器材质，能玻璃化的都玻璃化（blur 6 / 双峰高光 / 顶部亮边）
3. **图标**：**禁止 emoji**；一律 SVG。优先用 Lucide 官方图标，缺失时按 Lucide 风格自绘（参考 `assets/icons/lucide/`）
4. **字体**：全层级使用霞鹜文楷（LXGW WenKai）
5. **强调色**：唯一强调色为签名绿 `#00C48C`（深色 `#00D494`）
6. **对比度**：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

## 5. 版本与发布约定

- 模块版本文件夹命名：`<模块名>_v<版本>/`（如 `floating_nav_v1.1/`）
- 版本命名：`v<主>.<次>「命名」`（如 v1.1「方圆形居中」）
- 每个版本三件套：核心 `.dart` + 双语 `_changelog.md`（中文上/英文下）+ `demo/`（中英两份 HTML）
- 旧版本：直接删除，历史条目并入最新版 changelog
- Releases 只发布本项目自创内容（模块 zip / 核心文档 zip）；第三方资源（霞鹜文楷、Lucide）一律走官方链接，不搬运进 Release：
  - 霞鹜文楷：https://github.com/lxgw/LxgwWenKai
  - Lucide：https://lucide.dev

## 6. 预览方式

每个模块 `demo/` 下的 HTML 是权威预览（Web 端可见实际效果）：
- 基地演示：`EGD/EGD_v1.1/demo/EGD_v1.1_demo.html`（四支柱一页）
- color：`modules/color/color_v1.0/demo/eg_color_v1.0_demo.html`
- floating_nav：`modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html`

---

# agents.md — AI Handbook (Elegant Geek Design / EGD)

> This document is for AI models / agents / automation tools. Humans should read [README_en.md](README_en.md).
> You are an AI about to use the EGD design system for UI design or component development — follow this handbook.

## 1. Get the Project

Either way:

1. **Git clone** (recommended, full repo):
   ```
   git clone https://github.com/Kepsilent/Elegant-Geek-Design.git
   ```
2. **Release download**: GitHub Releases provides module zips:
   - `eg_color_v1.0.zip` (palette module)
   - `eg_floating_nav_v1.1.zip` (floating liquid-glass nav bar module)
   - `Elegant_Geek_Design_v1.1.zip` (core docs + EGD core)

## 2. Repo Layout

```
Elegant Geek Design/
├── Elegant_Geek_Design.md        ← Orchestration doc (Chinese core)
├── Elegant_Geek_Design_en.md     ← Orchestration doc (English)
├── README.md / README_en.md      ← Project front door (ZH/EN)
├── agents.md                     ← This file (AI handbook)
├── EGD/EGD_v1.1/                 ← Design-system core
│   ├── EGD_v1.1.dart             ← Core tokens: EGDColor / EGDGlass / EGDSpace / EGDText
│   ├── EGD_v1.1_changelog.md     ← Bilingual CHANGELOG (ZH top / EN bottom)
│   └── demo/                     ← ZH & EN HTML previews
├── modules/                      ← First-party modules (versioned folders)
│   ├── color/color_v1.0/         ← eg_color_v1.0.dart + changelog + demo/
│   └── floating_nav/floating_nav_v1.1/ ← eg_floating_nav_v1.1.dart + changelog + demo/
└── assets/
    ├── fonts/lxgw-wenkai/        ← LXGW WenKai (third-party, OFL 1.1)
    └── icons/lucide/             ← Lucide icons (third-party, ISC)
```

## 3. Module Imports (plug & play)

Each module is a standalone `.dart` — copy it into your project and import:

| Module | Import | Provides |
| --- | --- | --- |
| Core tokens | `import 'EGD/EGD_v1.1/EGD_v1.1.dart';` | `EGDColor.*`, `EGDGlass.*`, `EGDSpace.*`, `EGDText.*` |
| Palette | `import 'modules/color/color_v1.0/eg_color_v1.0.dart';` | all `EGDColor.*` constants |
| Floating nav | `import 'modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1.dart';` | `EGDFloatingNav` widget (liquid glass, drag-follow, tap-switch) |

## 4. Iron Rules (hard constraints)

1. **Background**: light pure white `#FFFFFF`, dark pure black `#000000`. No colorful / gradient backgrounds
2. **Glass**: liquid glass is the default container material — glassify everything (blur 6 / dual-peak highlight / top edge light)
3. **Icons**: **emoji banned**; always SVG. Prefer official Lucide; draw missing ones in Lucide style (see `assets/icons/lucide/`)
4. **Font**: LXGW WenKai everywhere
5. **Accent**: single accent color signature green `#00C48C` (dark `#00D494`)
6. **Contrast**: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)

## 5. Versioning & Release Conventions

- Version folder: `<module>_v<version>/` (e.g. `floating_nav_v1.1/`)
- Version name: `v<major>.<minor>「name」` (e.g. v1.1 "Squircle Centered")
- Each version ships three parts: core `.dart` + bilingual `_changelog.md` (ZH top / EN bottom) + `demo/` (ZH & EN HTML)
- Old versions: delete, merge history into the latest changelog
- Releases publish only first-party content (module zips / core doc zip); third-party assets (LXGW WenKai, Lucide) always via official links:
  - LXGW WenKai: https://github.com/lxgw/LxgwWenKai
  - Lucide: https://lucide.dev

## 6. Preview

The HTML under each module's `demo/` is the authoritative preview:
- Base showcase: `EGD/EGD_v1.1/demo/EGD_v1.1_demo.html`
- color: `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html`
- floating_nav: `modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html`
