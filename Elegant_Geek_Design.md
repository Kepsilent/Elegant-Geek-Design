# Elegant Geek Design（EGD）

> 极简 · 液态玻璃 · 纯白 / 纯黑 · 霞鹜文楷 · Lucide
>
> 当前版本：v1.2（2026-10-13 原子化重构）｜完整历史见 `Elegant_Geek_Design_changelog.json`｜英文版：`Elegant_Geek_Design_en.md`

---

## 0. EGD 是什么

**Elegant Geek Design（EGD）** 是一套跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）。本文件是它的统筹文档（核心），不是模块。

- **定位**：纯白为底、玻璃为质、翠绿为魂——优雅与极客的平衡
- **架构**：原子控件层（基层基座，各做一件事）→ 组合控件层（在原子件上搭，只装配不写新逻辑）
- **四大支柱**：
  1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题 → `modules/color/`
  2. **Floating Nav 悬浮导航**：组合件 = 悬浮 + 玻璃 + 拖动 + 滚动折叠 + 功能开关 → `modules/floating_nav_bar/`
  3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji → `assets/icons/lucide/`
  4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用 → `assets/fonts/lxgw-wenkai/`
- **本体代码**：`EGD/EGD_v1.1/EGD_v1.1.dart`（设计系统核心 Tokens：色板 / 玻璃 / 间距圆角 / 字号）
- **基地演示**：`EGD/EGD_v1.1/demo/EGD_v1.1_demo.html`（单文件，页面内中/英切换）

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
├── 原子控件层（基层基座，各自独立、只做一件事）
│   ├── color（颜色风格）             ← 已落地 v1.0「签名绿」
│   ├── liquid_glass（液态玻璃折射）   ← 已落地 v1.0「材质独立」
│   ├── drag_swipe（滑动交互）        ← 已落地 v1.0「手势独立」
│   ├── floating_widget（悬浮控件）    ← 已落地 v1.0「悬浮独立」
│   ├── scroll_hide（滚动折叠）        ← 已落地 v1.0「折叠独立」
│   └── toggle（功能开关）            ← 已落地 v1.0「开关独立」
├── 组合控件层（在原子件上搭，只装配）
│   └── floating_nav_bar（悬浮导航栏） ← 已落地 v1.0「原子拼装」
└── 第三方模块
    ├── 字体：霞鹜文楷 LXGW WenKai
    └── 图标：Lucide Icons
```

**检索（模块一览）**：

| 层级 | 模块 | 当前版本 | 模块文件 | 预览（页面内中/英切换） | CHANGELOG（_zh / _en） |
| --- | --- | --- | --- | --- | --- |
| 原子 | color | v1.0「签名绿」 | `modules/color/color_v1.0/eg_color_v1.0.dart` | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` | `eg_color_v1.0_changelog_zh.md` / `_en.md` |
| 原子 | liquid_glass | v1.0「材质独立」 | `modules/liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart` | `modules/liquid_glass/liquid_glass_v1.0/demo/eg_liquid_glass_v1.0_demo.html` | `eg_liquid_glass_v1.0_changelog_zh.md` / `_en.md` |
| 原子 | drag_swipe | v1.0「手势独立」 | `modules/drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart` | `modules/drag_swipe/drag_swipe_v1.0/demo/eg_drag_swipe_v1.0_demo.html` | `eg_drag_swipe_v1.0_changelog_zh.md` / `_en.md` |
| 原子 | floating_widget | v1.0「悬浮独立」 | `modules/floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart` | `modules/floating_widget/floating_widget_v1.0/demo/eg_floating_widget_v1.0_demo.html` | `eg_floating_widget_v1.0_changelog_zh.md` / `_en.md` |
| 原子 | scroll_hide | v1.0「折叠独立」 | `modules/scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart` | `modules/scroll_hide/scroll_hide_v1.0/demo/eg_scroll_hide_v1.0_demo.html` | `eg_scroll_hide_v1.0_changelog_zh.md` / `_en.md` |
| 原子 | toggle | v1.0「开关独立」 | `modules/toggle/toggle_v1.0/eg_toggle_v1.0.dart` | `modules/toggle/toggle_v1.0/demo/eg_toggle_v1.0_demo.html` | `eg_toggle_v1.0_changelog_zh.md` / `_en.md` |
| 组合 | floating_nav_bar | v1.0「原子拼装」 | `modules/floating_nav_bar/floating_nav_bar_v1.0/eg_floating_nav_bar_v1.0.dart` | `modules/floating_nav_bar/floating_nav_bar_v1.0/demo/eg_floating_nav_bar_v1.0_demo.html` | `eg_floating_nav_bar_v1.0_changelog_zh.md` / `_en.md` |
| 第三方 | 字体（霞鹜文楷） | v1.522 | 本地快照 `assets/fonts/lxgw-wenkai/` | — | — |
| 第三方 | 图标（Lucide） | v1.42.0 | 本地快照 `assets/icons/lucide/` | — | — |

---

## 3. 模块描述

### 原子控件层（基层基座）

原子件 = 装饰器式（`child` 包一切 + 专属参数），**各做一件事、互不依赖、可单独取用**。

#### color（颜色风格）

EGD 色板纯代码模块。提供签名绿系、中性色系、玻璃色系的浅色 / 深色双主题 Token，含对比度安全色（`accentText` 白底 5.36:1、`accentStrong` 白字底衬 4.66:1）。使用：`import 'eg_color_v1.0.dart'` → `EGDColor.accent`。

#### liquid_glass（液态玻璃折射）

只负责材质：blur 模糊 / 双峰高光 / 顶部亮边 / 折射 / 深浅双主题。可贴任意控件（卡片 / 按钮 / 导航栏 / sheet）。使用：`EGDLiquidGlass(child: ...)`。

#### drag_swipe（滑动交互）

只负责手势：拖动跟手 / 拖动中放大 / 松手弹性吸附 / 点击判定 / 边界橡皮筋。使用：`EGDDragSwipe(itemCount: n, onSelect: ..., child: ...)`。

#### floating_widget（悬浮控件）

只负责悬浮：悬浮定位（底部/角落/居中）/ 边距 / 层级，保持浮层。不带玻璃、不带手势——纯悬浮骨架。使用：`EGDFloatingWidget(position: ..., child: ...)`。

#### scroll_hide（滚动折叠）

只负责隐藏/展开：上下滑动浏览内容时折叠，方向可控、阈值可调、状态回调。使用：`EGDScrollHide(controller: ..., child: ...)`。

#### toggle（功能开关）

只负责开关：ValueNotifier 运行期开关，**关闭 = 被控内容不渲染（零资源开销）**，可带可视化开关按钮。使用：`EGDToggle(enabled: notifier, child: ...)`。

### 组合控件层（在原子件上搭，只装配不写新逻辑）

#### floating_nav_bar（悬浮导航栏）

组合件 = `EGDFloatingWidget` + `EGDLiquidGlass` + `EGDDragSwipe` + `EGDScrollHide`（可选）+ 配置开关。方圆形指示器严格居中、跟手拖动（指示器中心跟手）、拖动放大、松手弹性吸附、点击切换；滚动折叠与各功能层可经 `FloatingNavConfig` 独立启用 / 禁用（关闭 = 该层不进渲染树）。使用：

```dart
EGDFloatingNavBar(
  tabs: tabs,
  config: FloatingNavConfig(glass: true, drag: true, floating: true, scrollHide: true),
)
```

### 规划中

button / card / input / switch / sheet / toast 等，按需逐个落地为原子件 / 组合件。

### 第三方模块

- **字体 · 霞鹜文楷 LXGW WenKai**：全层级唯一设计字体。OFL 1.1，可免费商用。快照：`assets/fonts/lxgw-wenkai/`（Regular + Medium + OFL.txt）
- **图标 · Lucide Icons**：官方图标库，缺失时按同风格自绘 SVG。ISC，可免费商用。快照：`assets/icons/lucide/`（2074 枚 SVG + sprite.svg + LICENSE）

---

## 4. 模块架构

**两级架构**：原子控件层（基层基座）→ 组合控件层（在原子件上搭）。

**原子件**：装饰器式 `EGDXxx(child: ..., 专属参数)`，各做一件事、互不依赖、API 稳定（语义化版本保护）。示例——`liquid_glass`：

```
modules/
└── liquid_glass/                  ← 主文件夹（模块名称，保留中间层）
    └── liquid_glass_v1.0/         ← 版本文件夹（模块名_版本号，带前缀）
        ├── eg_liquid_glass_v1.0.dart                 ← 核心组件（纯代码，拼装即用）
        ├── eg_liquid_glass_v1.0_changelog_zh.md      ← 中文更新日志
        ├── eg_liquid_glass_v1.0_changelog_en.md      ← 英文更新日志
        └── demo/                                     ← 预览（单文件，页面内中/英切换）
            └── eg_liquid_glass_v1.0_demo.html
```

**组合件**：只做链式拼装 + 参数透传，**不写新逻辑**。示例——`floating_nav_bar` 拼装链：

```dart
EGDFloatingWidget(                          // 悬浮
  child: EGDLiquidGlass(                    // 玻璃（config.glass 控制）
    child: EGDDragSwipe(                    // 拖动（config.drag 控制）
      child: EGDScrollHide(                 // 滚动折叠（config.scrollHide 控制）
        child: tabBar,
      ),
    ),
  ),
)
```

**规则**：

1. 每个模块 = 主文件夹（模块命名，保留中间层），内按版本分子文件夹，**命名带前缀**：`<模块名>_v1.0/`、`<模块名>_v1.1/`、`<模块名>_v1.2/`、`<模块名>_v2.0/`……
2. 每个版本文件夹含三部分：
   - `eg_<模块名>_v<版本>.dart`：核心组件模块（纯代码，文件名统一 `eg_` 缩写前缀）
   - `eg_<模块名>_v<版本>_changelog_zh.md`（中文）+ `eg_<模块名>_v<版本>_changelog_en.md`（英文）：更新日志，**中英两个独立文件**，版本号同步提升
   - `demo/`：预览界面（Web 端 html；后续产物 APK / exe / iso 同放此处）。**单文件，页面内中/英切换**：`eg_<模块名>_v<版本>_demo.html`
3. **demo 逻辑**：预览界面调用该版本的 `.dart` 组件；顶部 CHANGELOG 区按当前语言内嵌对应文件——切中文嵌 `_changelog_zh.md`，切英文嵌 `_changelog_en.md`
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
