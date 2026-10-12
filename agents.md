# agents.md — EGD 使用说明（AI 版）

> 本篇提供给 AI 大模型 / 智能体参考，用于正确使用 EGD 设计系统完成界面设计或组件开发。项目概览见 [README.md](README.md)。

---

## 1. 获取资产

全部资产在 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**：

- **完整便携包**：`Elegant_Geek_Design_v1.1.zip`（一键解压：核心文档 + 核心文件（组件）+ 全部 demo 预览）
- **单独下载**：
  - 核心文件（组件）：`eg_color_v1.0.dart`、`eg_floating_nav_v1.1.dart`，可用对应 demo 预览效果
  - demo 预览：`EGD_v1.1_demo.html`、各组件 `eg_*_demo.html`（单文件，页面内中/英切换）
  - 核心文档（设计规范）：`Elegant_Geek_Design_v1.1.md`（中英）

## 2. 使用方式

1. **预览效果**：浏览器打开 `demo/*.html`（基地演示看 EGD demo，组件效果看组件 demo）
2. **按规范设计**：以核心文档 `Elegant_Geek_Design.md`（中文）为权威规范——色板、玻璃参数、间距、文字、图标规范全部在其中
3. **参照 demo 实现**：组件 demo 是效果的权威参照，据此在目标框架（Flutter 等）实现

## 3. 设计铁律（硬约束）

1. **背景**：浅色纯白 `#FFFFFF`，夜间纯黑 `#000000`，不依赖彩色 / 渐变背景
2. **玻璃**：液态玻璃为默认容器材质，能玻璃化的都玻璃化（blur 6 / 双峰高光 / 顶部亮边）
3. **图标**：禁止 emoji；一律 SVG，优先 Lucide 官方图标
4. **字体**：全层级使用霞鹜文楷（LXGW WenKai）
5. **强调色**：唯一强调色为签名绿 `#00C48C`（深色 `#00D494`）
6. **对比度**：正文 ≥ 4.5:1，大字 ≥ 3:1（WCAG 2.2 AA）

## 4. 版本与发布约定

- 版本命名：`v<主>.<次>「命名」`（如 v1.1「设计系统本体」）
- 每版本三件套（本地归档）：核心 `.dart` + 双 changelog（`_changelog_zh.md` / `_changelog_en.md`，版本号同步提升）+ `demo/`（单 HTML，中英切换）
- 旧版本直接删除，历史条目并入最新版 changelog
- **发布物**：核心文档（md）+ 核心文件（组件 `.dart`）+ 各组件 demo（html）+ 完整便携包；changelog 与 EGD 本体 `.dart` 不发布
- 完整发布规范见 [GitHub Wiki](https://github.com/Kepsilent/Elegant-Geek-Design/wiki)

## 5. 第三方附加

| 附加 | 用途 | 官方链接 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | 设计字体 | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | 图标库 | https://lucide.dev |
