# Elegant Geek Design (EGD)

> Minimal · Liquid Glass · Pure White / Pure Black · LXGW WenKai · Lucide
>
> Current version: v1.1 (2026-10-10, Design System Core) | Full history: `Elegant_Geek_Design_changelog.json` | 中文版: `Elegant_Geek_Design.md`

---

## 0. What EGD Is

**Elegant Geek Design (EGD)** is a cross-platform adaptive design system (Flutter-first, Android / iOS / Web / Desktop). This document is its orchestration hub (core), not a module.

- **Positioning**: Pure white base, glass texture, emerald soul — the balance of elegance and geek.
- **Four Pillars**:
  1. **Color**: Signature green `#00C48C` as the single accent + neutrals + glass colors, light/dark dual themes → `modules/color/`
  2. **Floating Nav**: bottom floating liquid-glass nav bar, drag-to-follow + tap-to-switch → `modules/floating_nav/`
  3. **Icons (Lucide)**: official icon library, all SVG, emoji banned → `assets/icons/lucide/`
  4. **Font (LXGW WenKai)**: the only design font at every level, OFL 1.1, free for commercial use → `assets/fonts/lxgw-wenkai/`
- **Core code**: `EGD/EGD_v1.1/EGD_v1.1.dart` (design-system core tokens: color / glass / spacing-radius / type)
- **Showcase demo**: `EGD/EGD_v1.1/demo/EGD_v1.1_demo.html` (Chinese) · `EGD_v1.1_demo_en.html` (English)

---

## 1. Style

**One line**: a minimal, premium cross-platform design language — pure white / pure black backgrounds, liquid-glass containers, a single signature green, LXGW WenKai typography, Lucide icons.

**Iron rules**:

1. Light background pure white `#FFFFFF`, dark pure black `#000000`; no dependence on colorful / gradient backgrounds
2. Liquid glass is the default container material (overlays, cards, nav bars, buttons)
3. Text layer uses LXGW WenKai (OFL 1.1, commercial OK); icon layer uses Lucide (ISC) + SVG; **emoji, icon fonts and PNG icons banned**
4. Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)

**Core parameters**:

| Item | Value |
| --- | --- |
| Accent green | light `#00C48C` / dark `#00D494` |
| Background | light `#FFFFFF` / dark `#000000` |
| Text | primary `#1D1D1F` / secondary `#6E6E73` / tertiary `#AEAEB2` |
| Glass base | light `rgba(255,255,255,0.55)` / dark `rgba(28,28,30,0.6)` |
| Glass params | blur 6 · thickness 30 · dual highlight · top edge |
| Font | LXGW WenKai (Regular 400 / Medium 500–700) |
| Icons | Lucide v1.42.0 (2074 SVGs), 24px grid, 1.5–2px round strokes |

---

## 2. Module Navigation

```
EGD Modules
├── Own modules
│   ├── color (palette)              ← shipped v1.0 "Signature Green"
│   ├── floating_nav (glass nav bar) ← shipped v1.1 "Squircle Centered"
│   └── others (button / card / input …) ← planned
└── Third-party
    ├── Font: LXGW WenKai
    └── Icons: Lucide
```

**Lookup (module index)**:

| Type | Module | Version | Module file | Preview (ZH / EN) | CHANGELOG |
| --- | --- | --- | --- | --- | --- |
| Own | color | v1.0 "Signature Green" | `modules/color/color_v1.0/eg_color_v1.0.dart` | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` · `..._demo_en.html` | `modules/color/color_v1.0/eg_color_v1.0_changelog.md` |
| Own | floating_nav | v1.1 "Squircle Centered" | `modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1.dart` | `modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html` · `..._demo_en.html` | `modules/floating_nav/floating_nav_v1.1/eg_floating_nav_v1.1_changelog.md` |
| Third-party | Font (LXGW WenKai) | v1.522 | local snapshot `assets/fonts/lxgw-wenkai/` | — | — |
| Third-party | Icons (Lucide) | v1.42.0 | local snapshot `assets/icons/lucide/` | — | — |

---

## 3. Module Descriptions

### color

Pure-code EGD palette module. Provides signature-green, neutral and glass families with light / dark dual-theme tokens, including contrast-safe colors (`accentText` 5.36:1 on white, `accentStrong` 4.66:1 for white text). Usage: `import 'eg_color_v1.0.dart'` → `EGDColor.accent`.

### floating_nav

Current version **v1.1 "Squircle Centered"**. Bottom floating liquid-glass nav bar. Drag-follow (squircle indicator, strictly centered, finger-to-center tracking), tap-to-switch, elastic snap on release, auto-linked pages. Cross-platform (Android / iOS / Web / Desktop). Usage: `EGDFloatingNav(tabs: [...])`.

### Others (planned)

button / card / input / switch / sheet / toast etc., shipped one by one as modules.

### Third-party

- **Font · LXGW WenKai**: the only design font at every level. OFL 1.1, free for commercial use. Snapshot: `assets/fonts/lxgw-wenkai/` (Regular + Medium + OFL.txt)
- **Icons · Lucide**: official icon library; missing icons drawn in the same style as SVG. ISC, free for commercial use. Snapshot: `assets/icons/lucide/` (2074 SVGs + sprite.svg + LICENSE)

---

## 4. Module Architecture

**Build logic** (floating_nav as example):

```
modules/
└── floating_nav/                    ← main folder (module name, keep the middle layer)
    └── floating_nav_v1.1/           ← version folder (module_ver, prefixed)
        ├── eg_floating_nav_v1.1.dart           ← core component (pure code, plug & play)
        ├── eg_floating_nav_v1.1_changelog.md   ← changelog (bilingual: Chinese top, English bottom)
        └── demo/                                ← previews
            ├── eg_floating_nav_v1.1_demo.html      ← Chinese preview
            └── eg_floating_nav_v1.1_demo_en.html   ← English preview
```

**Rules**:

1. Each module = main folder (module name, keep the middle layer), versioned sub-folders **prefixed**: `<module>_v1.0/`, `<module>_v1.1/`, `<module>_v1.2/`, `<module>_v2.0/` … (e.g. `floating_nav_v1.1/`)
2. Each version folder holds three parts:
   - `eg_<module>_v<ver>.dart`: core component (pure code, `eg_` prefix)
   - `eg_<module>_v<ver>_changelog.md`: changelog, **bilingual** — top half Chinese, bottom half English translation
   - `demo/`: previews (web html; future APK / exe / iso land here too). **Two previews**: `eg_<module>_v<ver>_demo.html` (Chinese) + `eg_<module>_v<ver>_demo_en.html` (English)
3. **Demo logic**: the preview renders the version's `.dart` component; the top CHANGELOG card embeds the `_changelog.md` content (Chinese preview embeds the Chinese part, English preview the English part)
4. **Iteration rule**: minor changes bump minor version (v1.0 → v1.1 → v1.2 → v1.3); major / breaking changes bump major version (v1.3 → v2.0)
5. **Version naming**: `v<major>.<minor>「<name>」`, 2–6 chars summarizing the core improvement
6. Each iteration: new version folder → update dart → update changelog → update ZH/EN demos → sync module index

---

## 5. Third-Party Notice

| Asset | Name | Source | License | Commercial | Local path |
| --- | --- | --- | --- | --- | --- |
| Font | LXGW WenKai | github.com/lxgw/LxgwWenKai | SIL OFL 1.1 | Allowed | `assets/fonts/lxgw-wenkai/` |
| Icons | Lucide | github.com/lucide-icons/lucide | ISC | Allowed | `assets/icons/lucide/` |

> License texts live in each snapshot dir (`LICENSE` / `OFL.txt`).
