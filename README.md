# Elegant Geek Design（EGD）

> 纯白为底 · 玻璃为质 · 翠绿为魂 —— 优雅与极客的平衡
>
> 跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）
>
> **English**：[English](README_en.md)

---

## 它是什么

EGD 是一套跨平台自适应设计系统。所有组件模块化封装，像拼装玩具一样即插即用；本仓库既是设计规范，也是可直接引用的代码库。

**四大支柱**：

1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题
2. **Floating Nav 悬浮导航**：底部液态玻璃导航栏，跟手拖动 + 点击切换
3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji
4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用

## 如何使用

**给人类用户**：

1. **获取项目**：直接 `git clone https://github.com/Kepsilent/Elegant-Geek-Design.git`，或到 [Releases](../../releases) 下载对应模块 zip
2. **看效果**：用浏览器打开各模块 `demo/` 下的 `.html` 预览（基地演示：`EGD/EGD_v1.1/demo/EGD_v1.1_demo.html`）
3. **用在自己项目里**：把模块文件夹（如 `floating_nav/floating_nav_v1.1/`）整体拷进你的 Flutter 工程，`import` 对应的 `.dart` 即可，像拼装玩具一样：
   - `eg_color_v1.0.dart` → 色板 Tokens（`EGDColor.*`）
   - `eg_floating_nav_v1.1.dart` → 悬浮液态玻璃导航栏组件
   - `EGD_v1.1.dart` → 设计系统核心 Tokens（颜色 / 玻璃 / 间距 / 文字）
4. **自己画图标**：缺失的图标按 Lucide 风格自绘 SVG（`assets/icons/lucide/` 有全套参考）

**给 AI（模型/Agent）**：请先阅读 **[agents.md](agents.md)** —— 里面有获取方式、模块清单、引用路径、铁律和版本约定，AI 按它操作即可正确使用本设计系统。

## 快速开始

```dart
// 引用 EGD 设计系统核心 Tokens
import 'EGD/EGD_v1.1/EGD_v1.1.dart';
EGDColor.accent;   // #00C48C
EGDGlass.blur;     // 6

// 悬浮液态玻璃导航栏（拼装即用）
EGDFloatingNav(tabs: [
  EGDTab(icon: Icon(Icons.grid), label: '示例', page: Page1()),
]);
```

## 目录结构

```
Elegant Geek Design/
├── Elegant_Geek_Design.md        ← 统筹文档（中文核心）
├── Elegant_Geek_Design_en.md     ← 统筹文档（英文版）
├── README.md / README_en.md      ← 本文件（中文）/ 英文版
├── EGD/EGD_v1.1/                 ← 设计系统核心 Tokens + 基地演示
├── modules/
│   ├── color/color_v1.0/         ← 色板模块
│   └── floating_nav/floating_nav_v1.1/ ← 悬浮导航模块
└── assets/
    ├── fonts/lxgw-wenkai/        ← 霞鹜文楷（OFL 1.1）
    └── icons/lucide/             ← Lucide（ISC）
```

## 模块索引

| 模块 | 最新版本 | 中文预览 | 英文预览 |
| --- | --- | --- | --- |
| EGD 本体 | v1.1「设计系统本体」 | `EGD/EGD_v1.1/demo/EGD_v1.1_demo.html` | `EGD_v1.1_demo_en.html` |
| color | v1.0「签名绿」 | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` | `..._demo_en.html` |
| floating_nav | v1.1「方圆形居中」 | `modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html` | `..._demo_en.html` |

## 设计约束（铁律）

- 背景浅色纯白 `#FFFFFF`、夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
- 液态玻璃为默认容器材质，能玻璃化的都玻璃化
- 禁 emoji 图标；图标一律 SVG（Lucide 风格）
- 对比度：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

## 第三方资源声明

| 资源 | 名称 | 许可证 | 商用 | 官方下载 |
| --- | --- | --- | --- | --- |
| 字体 | 霞鹜文楷 LXGW WenKai | SIL OFL 1.1 | 允许 | https://github.com/lxgw/LxgwWenKai |
| 图标 | Lucide Icons | ISC | 允许 | https://lucide.dev |

> 仓库内 `assets/` 已附带二者快照及许可证文本（OFL 1.1 / ISC 均允许再分发）；Releases 仅发布本项目自创内容（EGD 核心文档与自有模块），第三方请走官方链接。
