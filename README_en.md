# Elegant Geek Design (EGD)

> Pure white base · Glass texture · Emerald soul — elegance meets geek
>
> Cross-platform adaptive design system (Flutter-first: Android / iOS / Web / Desktop)
>
> **中文**：[中文](README.md)

---

## What It Is

EGD is a cross-platform adaptive design system. Every component is modular and plug-and-play, all distributed via Releases.

**Four Pillars**:

1. **Color**: signature green `#00C48C` as the single accent + neutrals + glass, light/dark dual themes
2. **Floating Nav**: bottom liquid-glass nav bar, drag-to-follow + tap-to-switch
3. **Icons (Lucide)**: official icon library, all SVG, emoji banned
4. **Font (LXGW WenKai)**: the only design font, OFL 1.1, free for commercial use

## How to Use

All design assets (core docs / EGD core / first-party modules) are distributed via **Releases** — download them there:

👉 **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**

| Asset | Contains |
| --- | --- |
| `Elegant_Geek_Design_v1.1.zip` | Core docs (ZH/EN) + EGD core (tokens + base showcase) + README + agents |
| `eg_color_v1.0.zip` | Palette module (signature green) |
| `eg_floating_nav_v1.1.zip` | Floating liquid-glass nav bar module |

Unzip, copy into your Flutter project, `import` the corresponding `.dart` — plug & play. For AI use, please read **[agents.md](agents.md)**.

## Quick Start

```dart
// Import EGD design-system core tokens
import 'EGD_v1.1/EGD_v1.1.dart';
EGDColor.accent;   // #00C48C
EGDGlass.blur;     // 6

// Floating liquid-glass nav bar (plug & play)
import 'floating_nav_v1.1/eg_floating_nav_v1.1.dart';
EGDFloatingNav(tabs: [
  EGDTab(icon: Icon(Icons.grid), label: 'Example', page: Page1()),
]);
```

## Repo Contents

This repo only carries the project front-door docs: `README.md` / `README_en.md` / `agents.md`. All design assets (core docs, EGD core, first-party modules, third-party snapshots) are distributed via **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** — nothing is stored directly in the repo.

## Iron Rules

- Light background pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
- Liquid glass is the default container material — glassify everything
- Emoji icons banned; all icons must be SVG (Lucide style)
- Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)

## Third-Party Notice

| Asset | Name | License | Commercial | Official Download |
| --- | --- | --- | --- | --- |
| Font | LXGW WenKai | SIL OFL 1.1 | Allowed | https://github.com/lxgw/LxgwWenKai |
| Icons | Lucide | ISC | Allowed | https://lucide.dev |

> Third-party assets (OFL 1.1 / ISC, both permit redistribution) are not in the repo or Releases — get them from the official links.
