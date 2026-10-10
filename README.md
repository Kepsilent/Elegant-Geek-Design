# Elegant Geek Design（EGD）

> 纯白为底 · 玻璃为质 · 翠绿为魂 —— 优雅与极客的平衡
>
> 跨平台自适应设计系统（Flutter 优先，Android / iOS / Web / 桌面）
>
> **English**：[English](README_en.md)

---

## 它是什么

EGD 是一套跨平台自适应设计系统：一套设计规范 + 可预览的组件 demo，全部通过 Release 分发。

**四大支柱**：

1. **Color 色板**：签名绿 `#00C48C` 唯一强调色 + 中性色 + 玻璃色，深浅双主题
2. **Floating Nav 悬浮导航**：底部液态玻璃导航栏，跟手拖动 + 点击切换
3. **图标 Lucide**：官方图标库，全部 SVG 实现，禁 emoji
4. **字体 霞鹜文楷**：全层级唯一设计字体，OFL 1.1 可商用

## 如何使用

全部资产在 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**：

- **完整便携包**：`Elegant_Geek_Design_v1.1.zip`，一键解压，含核心文档 + EGD demo + 各组件 demo
- **单独下载**：核心文档 `Elegant_Geek_Design_v1.1.md`（中英）、EGD demo、组件 demo（`*.html` 浏览器打开即可预览效果）

**第三方附加**（按需自行下载）：

| 附加 | 用途 | 官方链接 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | 设计字体 | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | 图标库 | https://lucide.dev |

AI 智能体使用说明见 [agents.md](agents.md)；发布规范见 [GitHub_Release.md](GitHub_Release.md)。

## 设计约束（铁律）

- 背景浅色纯白 `#FFFFFF`、夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
- 液态玻璃为默认容器材质，能玻璃化的都玻璃化
- 禁 emoji 图标；图标一律 SVG（Lucide 风格）
- 对比度：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）
