# Elegant Geek Design（EGD）

> 纯白为底 · 玻璃为质 · 翠绿为魂 —— 优雅与极客的平衡
>
> 跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）
>
> **English**：[English](README_en.md)

---

## 它是什么

EGD 是一套跨平台自适应设计系统。所有组件模块化封装，像拼装玩具一样即插即用，全部通过 Release 分发。

**四大支柱**：

1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题
2. **Floating Nav 悬浮导航**：底部液态玻璃导航栏，跟手拖动 + 点击切换
3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji
4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用

## 如何使用

所有设计资产（核心文档 / EGD 本体 / 自有模块）统一通过 **Releases** 分发，直接去下载：

👉 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**

| 资产 | 内容 |
| --- | --- |
| `Elegant_Geek_Design_v1.1.zip` | 核心文档（中英）+ EGD 本体（核心 Tokens + 基地演示）+ README + agents |
| `eg_color_v1.0.zip` | 色板模块（签名绿） |
| `eg_floating_nav_v1.1.zip` | 悬浮液态玻璃导航栏模块 |

下载解压后拷入你的 Flutter 工程，`import` 对应 `.dart` 即用（拼装玩具式）。AI 使用请阅读 **[agents.md](agents.md)**。

## 快速开始

```dart
// 引用 EGD 设计系统核心 Tokens
import 'EGD_v1.1/EGD_v1.1.dart';
EGDColor.accent;   // #00C48C
EGDGlass.blur;     // 6

// 悬浮液态玻璃导航栏（拼装即用）
import 'floating_nav_v1.1/eg_floating_nav_v1.1.dart';
EGDFloatingNav(tabs: [
  EGDTab(icon: Icon(Icons.grid), label: '示例', page: Page1()),
]);
```

## 仓库内容

本仓库仅含项目门面文档：`README.md` / `README_en.md` / `agents.md`。所有设计资产（核心文档、EGD 本体、自有模块、第三方快照）均通过 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** 分发，仓库内不直接存放。

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

> 第三方资源（OFL 1.1 / ISC 均允许再分发）不在仓库与 Releases 内，请走官方链接自行获取。
