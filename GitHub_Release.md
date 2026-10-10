# GitHub Release 手册 — EGD 发布规范

> 本文档规定 EGD 项目的 GitHub Release 发布逻辑，供维护者与 AI 智能体遵循。

---

## 1. 发布原则

- 仓库为纯门面（仅 README / agents / 本手册），所有设计资产经 **Releases** 分发
- Release 只发布自创内容；第三方资源（霞鹜文楷 / Lucide）只留官方链接，不搬运
- 一个版本对应一个 Release（tag 与版本号一致）

## 2. Release 资产结构

每个 Release 包含：

| 类别 | 文件 | 说明 |
| --- | --- | --- |
| 核心文档 | `Elegant_Geek_Design_v1.1.md` / `_en_v1.1.md` | 统筹文档（全称 + 版本号） |
| 主体预览 | `EGD_v1.1_demo.html` / `_demo_en.html` | EGD 基地演示（中英） |
| 组件预览 | `eg_<组件>_v<版本>_demo.html` / `_demo_en.html` | 各组件 demo（中英） |
| 完整便携包 | `Elegant_Geek_Design_v1.1.zip` | 一键解压，含全部代码 + 文档 + 预览 |

**明确排除**：changelog 文件不上传（历史见各版本 `_changelog.md` 本地归档）；EGD 本体不单独发布 `.dart`（核心文件仅由文档描述）。

## 3. 发布步骤

1. 版本迭代完成：核心 `.dart` + 双语 `_changelog.md`（中文上/英文下）+ `demo/`（中英两份）
2. 旧版本删除，历史并入最新版 changelog
3. 打 tag：`git tag v<版本>` 并推送
4. 打包便携包（不含 changelog、不含第三方）：
   ```
   Compress-Archive -Path <完整目录> -DestinationPath Elegant_Geek_Design_v1.1.zip
   ```
5. 创建 Release：
   ```
   gh release create v1.1 --title "EGD v1.1" --notes-file notes.txt <资产文件...>
   ```
6. Release 说明双语：上半中文、下半英文

## 4. Release 说明模板（双语）

```markdown
## 中文
EGD v1.1「设计系统本体」

- 完整便携包：Elegant_Geek_Design_v1.1.zip（一键解压，含全部代码 + 文档 + 预览）
- 单独下载：核心文档（md）+ 各组件 demo（html 预览）
- 第三方附加：霞鹜文楷 https://github.com/lxgw/LxgwWenKai · Lucide https://lucide.dev

## English
EGD v1.1 "Design System Core"

- Portable bundle: Elegant_Geek_Design_v1.1.zip (unzip once, full code + docs + previews)
- Individual files: core docs (md) + per-module demos (html previews)
- Third-party add-ons: LXGW WenKai https://github.com/lxgw/LxgwWenKai · Lucide https://lucide.dev
```

## 5. 第三方约定

| 资源 | 许可证 | 处理方式 |
| --- | --- | --- |
| 霞鹜文楷 LXGW WenKai | OFL 1.1 | 仅官方链接，不入 Release |
| Lucide Icons | ISC | 仅官方链接，不入 Release |

---

# GitHub Release Handbook — EGD Release Conventions

> This document defines the GitHub Release workflow for the EGD project, for maintainers and AI agents.

## 1. Principles

- The repo is a pure front-door (README / agents / this handbook); all design assets ship via **Releases**
- Releases publish only first-party content; third-party assets (LXGW WenKai / Lucide) are linked officially, never bundled
- One version = one Release (tag matches the version)

## 2. Release Asset Structure

| Category | File | Notes |
| --- | --- | --- |
| Core docs | `Elegant_Geek_Design_v1.1.md` / `_en_v1.1.md` | Orchestration docs (full name + version) |
| Core preview | `EGD_v1.1_demo.html` / `_demo_en.html` | EGD base showcase (ZH/EN) |
| Module previews | `eg_<module>_v<version>_demo.html` / `_demo_en.html` | Per-module demos (ZH/EN) |
| Portable bundle | `Elegant_Geek_Design_v1.1.zip` | Unzip once: full code + docs + previews |

**Excluded**: changelog files are not uploaded; EGD core is not released as a standalone `.dart` (the core is described by docs only).

## 3. Steps

1. Version done: core `.dart` + bilingual `_changelog.md` (ZH top / EN bottom) + `demo/` (ZH & EN)
2. Delete old versions, merge history into the latest changelog
3. Tag: `git tag v<version>` and push
4. Build the portable zip (no changelog, no third-party):
   ```
   Compress-Archive -Path <full-dir> -DestinationPath Elegant_Geek_Design_v1.1.zip
   ```
5. Create the Release:
   ```
   gh release create v1.1 --title "EGD v1.1" --notes-file notes.txt <assets...>
   ```
6. Release notes bilingual: Chinese first, English below

## 4. Notes Template (bilingual)

```markdown
## 中文
EGD v1.1「设计系统本体」

- 完整便携包：Elegant_Geek_Design_v1.1.zip（一键解压，含全部代码 + 文档 + 预览）
- 单独下载：核心文档（md）+ 各组件 demo（html 预览）
- 第三方附加：霞鹜文楷 https://github.com/lxgw/LxgwWenKai · Lucide https://lucide.dev

## English
EGD v1.1 "Design System Core"

- Portable bundle: Elegant_Geek_Design_v1.1.zip (unzip once, full code + docs + previews)
- Individual files: core docs (md) + per-module demos (html previews)
- Third-party add-ons: LXGW WenKai https://github.com/lxgw/LxgwWenKai · Lucide https://lucide.dev
```

## 5. Third-Party Policy

| Asset | License | Handling |
| --- | --- | --- |
| LXGW WenKai | OFL 1.1 | official link only, never in Releases |
| Lucide Icons | ISC | official link only, never in Releases |
