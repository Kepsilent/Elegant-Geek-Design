# EGD 组件创建手册 · Component Creation Guide

> 适用于 Elegant Geek Design（EGD）所有组件的创建、命名、版本迭代与发布。
> 本手册是**落地规范**：按此手册产出的每个组件，结构、命名、文档、预览必须与现有模块完全一致。

---

## 1. 模块体系（两级架构）

```
原子控件层（基层基座）→ 组合控件层（在原子件上搭）
```

| 层级 | 职责 | 示例 |
| --- | --- | --- |
| 原子件 | 各做一件事、互不依赖、装饰器式 API | liquid_glass / drag_swipe / floating_widget / scroll_hide / toggle |
| 组合件 | 链式拼装 + 参数透传，**不写新逻辑** | floating_nav_bar |

- 原子件 API 形态：`EGDXxx(child: ..., 专属参数)`，`child` 包一切。
- 组合件：只负责"把已存在的原子件串起来"，新行为必须拆成新原子件。

---

## 2. 目录结构（每个组件一个模块）

```
modules/
└── <模块名>/                        ← 主文件夹（模块名称，保留中间层）
    └── <模块名>_v<版本>/            ← 版本文件夹（模块名_版本号，带前缀）
        ├── eg_<模块名>_v<版本>.dart                ← 核心组件（纯代码，拼装即用）
        ├── eg_<模块名>_v<版本>_changelog_zh.md     ← 中文更新日志
        ├── eg_<模块名>_v<版本>_changelog_en.md     ← 英文更新日志
        └── demo/                                    ← 预览（单文件，页面内中/英切换）
            └── eg_<模块名>_v<版本>_demo.html
```

### 命名规范

| 对象 | 规则 | 示例 |
| --- | --- | --- |
| 主文件夹 | 模块英文名，小写、下划线 | `floating_nav_bar/` |
| 版本文件夹 | `<模块名>_v<版本>`（带前缀，不只有 `v1.0`） | `floating_nav_bar_v1.0/` |
| Dart 组件 | `eg_<模块名>_v<版本>.dart`（统一 `eg_` 缩写前缀） | `eg_floating_nav_bar_v1.0.dart` |
| 中文日志 | `eg_<模块名>_v<版本>_changelog_zh.md` | `eg_floating_nav_bar_v1.0_changelog_zh.md` |
| 英文日志 | `eg_<模块名>_v<版本>_changelog_en.md` | `eg_floating_nav_bar_v1.0_changelog_en.md` |
| 预览 | `demo/eg_<模块名>_v<版本>_demo.html` | `demo/eg_floating_nav_bar_v1.0_demo.html` |

> 禁止：只有 `v1.0/` 无前缀的文件夹、无版本号的 dart、emoji / 中文文件名。

---

## 3. CHANGELOG 规范（双语双文件）

- **中英两个独立文件**：`_changelog_zh.md`（中文）+ `_changelog_en.md`（英文），同一版本号同步提升。
- 格式（Markdown）：

```markdown
# <模块名> CHANGELOG

## v1.0（2026-10-13）
- 首条：该版本新增/修复了什么
- 每条一行，具体、可验证
```

- 英文版：`## v1.0 (2026-10-13)`，条目英文。
- 迭代时**只保留最新版本条目**；旧版本内容并入最新条目（写明"由旧版迁移/承接"），不保留历史章节。
- 组合件承接旧模块历史时，在 changelog 中显式注明"由原 XX vX.X 重构而来，能力全部承接"。

---

## 4. Demo 规范（单文件、页面内中英切换）

- 位置：版本文件夹内 `demo/eg_<模块名>_v<版本>_demo.html`。
- **单文件**，页面内放「中文 / English」切换按钮——不是两个 html。
- 页面结构（自上而下）：
  1. 语言切换条（中 / EN）
  2. CHANGELOG 卡片：按当前语言内嵌对应 changelog 内容（切中文展示 `_zh`，切英文展示 `_en`），顶部标注版本号 + 版本命名 + 日期
  3. 组件演示区：直接呈现该组件在真实运行中的形态与交互
- 样式硬约束：
  - 全层级霞鹜文楷（`@font-face` 引用 `../../../../assets/fonts/lxgw-wenkai/` 下的 ttf）
  - 图标用 Lucide SVG（内联 `<svg>`，不用 emoji、不用 icon font、不用 PNG）
  - 背景纯白 `#FFFFFF`，玻璃容器用 EGD 玻璃参数（blur 24 / 白色 55% / 顶部亮边 / 0.5px 描边）
- 演示内容：**只呈现该组件本身**，不出现描述性废话；示例 tab 统一用「示例」，不放 home / settings 等业务语义。

---

## 5. 版本迭代规则

| 变更 | 版本 | 示例 |
| --- | --- | --- |
| 小修小改 / 新增非破坏功能 | 次版本 +1 | v1.0 → v1.1 → v1.2 → v1.3 |
| 大改 / 破坏性变更 | 主版本 +1 | v1.3 → v2.0 |

- 版本命名：`v<主>.<次>「<命名>」`，命名用 2–6 字概括本次迭代核心改进（如「方圆形居中」「原子拼装」）。
- 每次迭代步骤：
  1. 新建版本文件夹（带前缀）
  2. 更新 dart（核心组件）
  3. 更新 changelog（_zh / _en，只保留最新）
  4. 更新 demo（中英切换单文件）
  5. 同步 EGD 核心文档（`Elegant_Geek_Design.md` / `_en.md`）的模块导航树与检索表
  6. 更新 `Elegant_Geek_Design_changelog.json`（新增版本条目，`current_version` / `last_updated`）
- **旧版本文件夹直接删除**，能力与历史并入新版本；不留空文件夹。

---

## 6. 第三方组件处理

| 资源 | 名称 | 来源 | 许可证 | 处理方式 |
| --- | --- | --- | --- | --- |
| 字体 | 霞鹜文楷 LXGW WenKai | github.com/lxgw/LxgwWenKai | SIL OFL 1.1 | 本地快照 `assets/fonts/lxgw-wenkai/`，附带 OFL.txt |
| 图标 | Lucide Icons | github.com/lucide-icons/lucide | ISC | 本地快照 `assets/icons/lucide/`，附带 LICENSE |

- 第三方组件**不进入 modules/**，统一放 `assets/` 快照并保留许可证。
- 缺失图标：按 Lucide 风格自绘 SVG（24px 网格、1.5–2px 圆头笔画），不使用 emoji 替代。
- 声明：EGD 核心文档 §5 第三方资源声明表必须同步。

---

## 7. 发布流程（GitHub Release）

1. 装配便携包（内部含：EGD 核心文档中英 + changelog.json + EGD 本体 + 全部自有模块 + 第三方 assets），目录命名 `Elegant_Geek_Design_v<版本>/`。
2. 压缩为单个便携 zip：`Elegant_Geek_Design_v<版本>.zip`（一键解压即用）。
3. Release 只上传**这一个便携 zip**；README / agents 等门面文件不入 Release。
4. 发布规范详见 GitHub Wiki（经 `agents.md` 引导 AI 访问）。

---

## 8. 完工自检清单

- [ ] 目录带中间层 + 版本前缀文件夹
- [ ] dart 命名 `eg_<模块名>_v<版本>.dart`，纯代码无中文描述
- [ ] changelog 双文件（_zh / _en）只保留最新版本
- [ ] demo 单文件、中英切换、CHANGELOG 按语言内嵌、无 emoji、霞鹜文楷 + Lucide
- [ ] EGD 核心文档（中英）模块导航树 / 检索表 / §4 架构已同步
- [ ] `Elegant_Geek_Design_changelog.json` 已加新版本条目
- [ ] 便携 zip 已重建，Release 已更新（单资产）
