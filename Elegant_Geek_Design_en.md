# Elegant Geek Design (EGD)

> Minimal · Liquid Glass · Pure White / Pure Black · LXGW WenKai · Lucide
>
> Current version: v1.2 (2026-10-13, Atom Refactor) | Full history: `Elegant_Geek_Design_changelog.json` | 中文版: `Elegant_Geek_Design.md`

---

## 0. What EGD Is

**Elegant Geek Design (EGD)** is a cross-platform adaptive design system (Flutter-first, Android / iOS / Web / Desktop). This document is its orchestration hub (core), not a module.

- **Positioning**: Pure white base, glass texture, emerald soul — the balance of elegance and geek.
- **Architecture**: Atom layer (base primitives, each does one thing) → Composite layer (built on atoms, assembly only, no new logic).
- **Four Pillars**:
  1. **Color**: Signature green `#00C48C` as the single accent + neutrals + glass colors, light/dark dual themes → `modules/color/`
  2. **Floating Nav**: composite = floating + glass + drag + scroll-hide + feature toggles → `modules/floating_nav_bar/`
  3. **Icons (Lucide)**: official icon library, all SVG, emoji banned → `assets/icons/lucide/`
  4. **Font (LXGW WenKai)**: the only design font at every level, OFL 1.1, free for commercial use → `assets/fonts/lxgw-wenkai/`
- **Core code**: `EGD/EGD_v1.1/EGD_v1.1.dart` (design-system core tokens: color / glass / spacing-radius / type)
- **Showcase demo**: `EGD/EGD_v1.1/demo/EGD_v1.1_demo.html` (single file, in-page ZH/EN switch)

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
├── Atom layer (base primitives, each does one thing)
│   ├── color (palette)             ← shipped v1.0 "Signature Green"
│   ├── liquid_glass (glass)        ← shipped v1.0 "Material Standalone"
│   ├── drag_swipe (gestures)       ← shipped v1.0 "Gesture Standalone"
│   ├── floating_widget (float)     ← shipped v1.0 "Float Standalone"
│   ├── scroll_hide (collapse)      ← shipped v1.0 "Collapse Standalone"
│   └── toggle (feature switch)     ← shipped v1.0 "Switch Standalone"
├── Composite layer (built on atoms, assembly only)
│   └── floating_nav_bar (nav bar)  ← shipped v1.0 "Atom Assembly"
└── Third-party
    ├── Font: LXGW WenKai
    └── Icons: Lucide
```

**Lookup (module index)**:

| Layer | Module | Version | Module file | Preview (in-page ZH/EN switch) | CHANGELOG (_zh / _en) |
| --- | --- | --- | --- | --- | --- |
| Atom | color | v1.0 "Signature Green" | `modules/color/color_v1.0/eg_color_v1.0.dart` | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` | `eg_color_v1.0_changelog_zh.md` / `_en.md` |
| Atom | liquid_glass | v1.0 "Material Standalone" | `modules/liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart` | `modules/liquid_glass/liquid_glass_v1.0/demo/eg_liquid_glass_v1.0_demo.html` | `eg_liquid_glass_v1.0_changelog_zh.md` / `_en.md` |
| Atom | drag_swipe | v1.0 "Gesture Standalone" | `modules/drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart` | `modules/drag_swipe/drag_swipe_v1.0/demo/eg_drag_swipe_v1.0_demo.html` | `eg_drag_swipe_v1.0_changelog_zh.md` / `_en.md` |
| Atom | floating_widget | v1.0 "Float Standalone" | `modules/floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart` | `modules/floating_widget/floating_widget_v1.0/demo/eg_floating_widget_v1.0_demo.html` | `eg_floating_widget_v1.0_changelog_zh.md` / `_en.md` |
| Atom | scroll_hide | v1.0 "Collapse Standalone" | `modules/scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart` | `modules/scroll_hide/scroll_hide_v1.0/demo/eg_scroll_hide_v1.0_demo.html` | `eg_scroll_hide_v1.0_changelog_zh.md` / `_en.md` |
| Atom | toggle | v1.0 "Switch Standalone" | `modules/toggle/toggle_v1.0/eg_toggle_v1.0.dart` | `modules/toggle/toggle_v1.0/demo/eg_toggle_v1.0_demo.html` | `eg_toggle_v1.0_changelog_zh.md` / `_en.md` |
| Composite | floating_nav_bar | v1.0 "Atom Assembly" | `modules/floating_nav_bar/floating_nav_bar_v1.0/eg_floating_nav_bar_v1.0.dart` | `modules/floating_nav_bar/floating_nav_bar_v1.0/demo/eg_floating_nav_bar_v1.0_demo.html` | `eg_floating_nav_bar_v1.0_changelog_zh.md` / `_en.md` |
| Third-party | Font (LXGW WenKai) | v1.522 | local snapshot `assets/fonts/lxgw-wenkai/` | — | — |
| Third-party | Icons (Lucide) | v1.42.0 | local snapshot `assets/icons/lucide/` | — | — |

---

## 3. Module Descriptions

### Atom layer (base primitives)

Atoms are decorator-style (`child` wraps everything + own params), **each does one thing, no dependencies, individually reusable**.

#### color

Pure-code EGD palette module. Provides signature-green, neutral and glass families with light / dark dual-theme tokens, including contrast-safe colors (`accentText` 5.36:1 on white, `accentStrong` 4.66:1 for white text). Usage: `import 'eg_color_v1.0.dart'` → `EGDColor.accent`.

#### liquid_glass

Material only: blur / dual highlight / top edge / refraction / light-dark themes. Wraps any widget (cards / buttons / nav bars / sheets). Usage: `EGDLiquidGlass(child: ...)`.

#### drag_swipe

Gestures only: drag-follow / press scale / elastic snap / tap detection / boundary bounce. Usage: `EGDDragSwipe(itemCount: n, onSelect: ..., child: ...)`.

#### floating_widget

Floating only: floating position (bottom / corner / center) / offset / z-index, keeps overlay. No glass, no gestures — pure floating skeleton. Usage: `EGDFloatingWidget(position: ..., child: ...)`.

#### scroll_hide

Collapse only: hide/expand while scrolling content, direction control, adjustable threshold, state callback. Usage: `EGDScrollHide(controller: ..., child: ...)`.

#### toggle

Switch only: runtime ValueNotifier switch, **off = controlled content not rendered (zero cost)**, optional visible switch UI. Usage: `EGDToggle(enabled: notifier, child: ...)`.

### Composite layer (built on atoms, assembly only)

#### floating_nav_bar

Composite = `EGDFloatingWidget` + `EGDLiquidGlass` + `EGDDragSwipe` + `EGDScrollHide` (optional) + config toggles. Squircle indicator strictly centered, drag-follow (indicator center follows finger), press scale, elastic snap, tap-to-switch; scroll-hide and each feature layer independently togglable via `FloatingNavConfig` (off = layer not in the render tree). Usage:

```dart
EGDFloatingNavBar(
  tabs: tabs,
  config: FloatingNavConfig(glass: true, drag: true, floating: true, scrollHide: true),
)
```

### Planned

button / card / input / switch / sheet / toast etc., shipped one by one as atoms / composites.

### Third-party

- **Font · LXGW WenKai**: the only design font at every level. OFL 1.1, free for commercial use. Snapshot: `assets/fonts/lxgw-wenkai/` (Regular + Medium + OFL.txt)
- **Icons · Lucide**: official icon library; missing icons drawn in the same style as SVG. ISC, free for commercial use. Snapshot: `assets/icons/lucide/` (2074 SVGs + sprite.svg + LICENSE)

---

## 4. Module Architecture

**Two layers**: Atom layer (base primitives) → Composite layer (built on atoms).

**Atoms**: decorator-style `EGDXxx(child: ..., own params)`, each does one thing, no dependencies, stable API (protected by semantic versioning). Example — `liquid_glass`:

```
modules/
└── liquid_glass/                  ← main folder (module name, keep the middle layer)
    └── liquid_glass_v1.0/         ← version folder (module_ver, prefixed)
        ├── eg_liquid_glass_v1.0.dart                 ← core component (pure code, plug & play)
        ├── eg_liquid_glass_v1.0_changelog_zh.md      ← Chinese changelog
        ├── eg_liquid_glass_v1.0_changelog_en.md      ← English changelog
        └── demo/                                     ← preview (single file, in-page ZH/EN switch)
            └── eg_liquid_glass_v1.0_demo.html
```

**Composites**: chain assembly + param passthrough only, **no new logic**. Example — `floating_nav_bar` assembly chain:

```dart
EGDFloatingWidget(                          // floating
  child: EGDLiquidGlass(                    // glass (config.glass)
    child: EGDDragSwipe(                    // drag (config.drag)
      child: EGDScrollHide(                 // scroll-hide (config.scrollHide)
        child: tabBar,
      ),
    ),
  ),
)
```

**Rules**:

1. Each module = main folder (module name, keep the middle layer), versioned sub-folders **prefixed**: `<module>_v1.0/`, `<module>_v1.1/`, `<module>_v1.2/`, `<module>_v2.0/` …
2. Each version folder holds three parts:
   - `eg_<module>_v<ver>.dart`: core component (pure code, `eg_` prefix)
   - `eg_<module>_v<ver>_changelog_zh.md` (Chinese) + `eg_<module>_v<ver>_changelog_en.md` (English): changelog, **two separate files**, version bumps in sync
   - `demo/`: previews (web html; future APK / exe / iso land here too). **Single file, in-page ZH/EN switch**: `eg_<module>_v<ver>_demo.html`
3. **Demo logic**: the preview renders the version's `.dart` component; the top CHANGELOG card embeds the file matching the current language — `_changelog_zh.md` in Chinese, `_changelog_en.md` in English
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
