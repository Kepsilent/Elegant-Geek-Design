# Elegant Geek Design（EGD）

> 极简 · 液态玻璃 · 纯白 / 纯黑 · 霞鹜文楷 · Lucide
>
> 当前版本：v1.1（2026-10-10 设计系统本体）｜完整历史见 `Elegant_Geek_Design_changelog.json`｜英文版：`Elegant_Geek_Design_en.md`

---

## 0. EGD 是什么

**Elegant Geek Design（EGD）** 是一套跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）。本文件是它的统筹文档（核心），不是模块。

- **定位**：纯白为底、玻璃为质、翠绿为魂——优雅与极客的平衡
- **四大支柱**：
  1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题 → `modules/color/`
  2. **Floating Nav 悬浮导航**：底部悬浮液态玻璃导航栏，跟手拖动 + 点击切换 → `modules/floating_nav/`
  3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji → `assets/icons/lucide/`
  4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用 → `assets/fonts/lxgw-wenkai/`
- **本体代码**：`EGD/EGD_v1.1/EGD_v1.1.dart`（设计系统核心 Tokens：色板 / 玻璃 / 间距圆角 / 字号）
- **基地演示**：`EGD/EGD_v1.1/demo/EGD_v1.1_demo.html`（中文）· `EGD_v1.1_demo_en.html`（英文）

---

## 1. 风格

**一句话**：极简 + 高级的跨端设计语言——纯白 / 纯黑背景、液态玻璃容器、单一签名绿、霞鹜文楷文字、Lucide 图标。

**铁律**：

1. 背景浅色纯白 `#FFFFFF`、夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
2. 液态玻璃为默认容器材质（浮层、卡片、导航栏、按钮）
3. 文字层用霞鹜文楷（OFL 1.1 可商用）；图标层用 Lucide（ISC）+ SVG 实现；**禁用 emoji、icon font、PNG 图标**
4. 对比度：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

**核心参数**：

| 项 | 值 |
| --- | --- |
| 强调绿 | 浅色 `#00C48C` / 深色 `#00D494` |
| 背景 | 浅色 `#FFFFFF` / 深色 `#000000` |
| 文字 | 主 `#1D1D1F` / 次 `#6E6E73` / 弱 `#AEAEB2` |
| 玻璃底 | 浅色 `rgba(255,255,255,0.55)` / 深色 `rgba(28,28,30,0.6)` |
| 玻璃参数 | blur 6 · thickness 30 · 双峰高光 · 顶部亮边 |
| 字体 | 霞鹜文楷 LXGW WenKai（Regular 400 / Medium 500–700） |
| 图标 | Lucide v1.42.0（2074 枚 SVG），24px 网格、1.5–2px 圆头笔画 |

---

## 2. 模块导航

```
EGD Modules
├── 自有模块
│   ├── color（颜色风格）            ← 已落地 v1.0「签名绿」
│   ├── floating_nav（悬浮玻璃导航栏）← 已落地 v1.1「方圆形居中」
│   └── 其他模块（button / card / input …）← 规划中
└── 第三方模块
    ├── 字体：霞鹜文楷 LXGW WenKai
    └── 图标：Lucide Icons
```

**检索（模块一览）**：

| 分类 | 模块 | 当前版本 | 模块文件 | 预览（中文 / 英文） | CHANGELOG |
| --- | --- | --- | --- | --- | --- |
| 自有 | color | v1.0「签名绿」 | `modules/color/color_v1.0/eg_color_v1.0.dart` | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` · `..._demo_en.html` | `modules/color/color_v1.0/eg_color_v1.0_changelog.md` |
| 自有 | floating_nav | v1.1「方圆形居中」 | `modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1.dart` | `modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html` · `..._demo_en.html` | `modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1_changelog.md` |
| 第三方 | 字体（霞鹜文楷） | v1.522 | 本地快照 `assets/fonts/lxgw-wenkai/` | — | — |
| 第三方 | 图标（Lucide） | v1.42.0 | 本地快照 `assets/icons/lucide/` | — | — |

---

## 3. 模块描述

### color（颜色风格）

EGD 色板纯代码模块。提供签名绿系、中性色系、玻璃色系的浅色 / 深色双主题 Token，含对比度安全色（`accentText` 白底 5.36:1、`accentStrong` 白字底衬 4.66:1）。使用：`import 'eg_color_v1.0.dart'` → `EGDColor.accent`。

### floating_nav（悬浮玻璃导航栏）

当前版本 **v1.1「方圆形居中」**。底部悬浮液态玻璃导航栏组件。整条导航栏跟手拖动（指示器方圆形、严格居中、手指到哪中心到哪）、点击切换、松手弹性吸附，自动联动页面。全平台（Android / iOS / Web / 桌面）。使用：`EGDFloatingNav(tabs: [...])` 拼装即用。

### 其他模块（规划中）

button / card / input / switch / sheet / toast 等，按需逐个落地为模块。

### 第三方模块

- **字体 · 霞鹜文楷 LXGW WenKai**：全层级唯一设计字体。OFL 1.1，可免费商用。快照：`assets/fonts/lxgw-wenkai/`（Regular + Medium + OFL.txt）
- **图标 · Lucide Icons**：官方图标库，缺失时按同风格自绘 SVG。ISC，可免费商用。快照：`assets/icons/lucide/`（2074 枚 SVG + sprite.svg + LICENSE）

---

## 4. 模块架构

**模块构建逻辑**（以 floating_nav 为例）：

```
modules/
└── floating_nav/                    ← 主文件夹（模块名称，保留中间层）
    └── floating_nav_v1.1/           ← 版本文件夹（模块名_版本号，带前缀）
        ├── eg_floating_nav_v1.1.dart           ← 核心组件（纯代码，拼装即用）
        ├── eg_floating_nav_v1.1_changelog.md   ← 更新日志（双语：上半中文、下半英文）
        └── demo/                                ← 预览
            ├── eg_floating_nav_v1.1_demo.html      ← 中文预览
            └── eg_floating_nav_v1.1_demo_en.html   ← 英文预览
```

**规则**：

1. 每个模块 = 主文件夹（模块命名，保留中间层），内按版本分子文件夹，**命名带前缀**：`<模块名>_v1.0/`、`<模块名>_v1.1/`、`<模块名>_v1.2/`、`<模块名>_v2.0/`……（如 `floating_nav_v1.1/`）
2. 每个版本文件夹含三部分：
   - `eg_<模块名>_v<版本>.dart`：核心组件模块（纯代码，文件名统一 `eg_` 缩写前缀）
   - `eg_<模块名>_v<版本>_changelog.md`：更新日志，**双语**——上半部分全中文，下半部分全英文翻译
   - `demo/`：预览界面（Web 端 html；后续产物 APK / exe / iso 同放此处）。**中英两个预览**：`eg_<模块名>_v<版本>_demo.html`（中文）+ `eg_<模块名>_v<版本>_demo_en.html`（英文）
3. **demo 逻辑**：预览界面调用该版本的 `.dart` 组件；顶部 CHANGELOG 区直接内嵌 `_changelog.md` 的内容（中文预览嵌中文部分，英文预览嵌英文部分）
4. **迭代规则**：小修小改走次版本（v1.0 → v1.1 → v1.2 → v1.3）；大改 / 破坏性变更走主版本（v1.3 → v2.0）
5. **版本命名**：`v<主>.<次>「<命名>」`，命名用 2–6 字概括本次迭代核心改进
6. 每次迭代：新建版本文件夹 → 更新 dart → 更新 changelog → 更新中英 demo → 同步模块导航表

---

## 5. 第三方资源声明

| 资源 | 名称 | 来源 | 许可证 | 商用 | 本地位置 |
| --- | --- | --- | --- | --- | --- |
| 字体 | 霞鹜文楷 LXGW WenKai | github.com/lxgw/LxgwWenKai | SIL OFL 1.1 | 允许 | `assets/fonts/lxgw-wenkai/` |
| 图标 | Lucide Icons | github.com/lucide-icons/lucide | ISC | 允许 | `assets/icons/lucide/` |

> 许可证原文见各快照目录内 `LICENSE` / `OFL.txt`。
