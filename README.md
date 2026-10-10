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

全部资产在 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**，想单下哪个文件就点哪个，或者直接下完整便携包一键解压：

**完整便携包**：`Elegant_Geek_Design_v1.1.zip`（含全部模块 + 核心文档 + 预览，解压即用）

**文件列表**（原文件，可单独下载）：

| 文件 | 说明 |
| --- | --- |
| `EGD_v1.1.dart` | 设计系统核心 Tokens（颜色 / 玻璃 / 间距 / 文字） |
| `eg_color_v1.0.dart` | 色板模块（签名绿） |
| `eg_floating_nav_v1.1.dart` | 悬浮液态玻璃导航栏模块 |
| `Elegant_Geek_Design.md` | 统筹文档（中文核心） |
| `Elegant_Geek_Design_en.md` | 统筹文档（英文版） |
| `eg_*_demo.html` | 各模块中英文预览（浏览器直接打开） |

解压 / 下载后拷入 Flutter 工程，`import` 对应 `.dart` 即用。

**第三方附加**（按需自行下载）：

| 附加 | 用途 | 官方链接 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | 设计字体 | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | 图标库 | https://lucide.dev |

AI 智能体使用说明见 [agents.md](agents.md)。

## 设计约束（铁律）

- 背景浅色纯白 `#FFFFFF`、夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
- 液态玻璃为默认容器材质，能玻璃化的都玻璃化
- 禁 emoji 图标；图标一律 SVG（Lucide 风格）
- 对比度：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）
