# Elegant Geek Design (EGD)

> Pure white base · Glass texture · Emerald soul — elegance meets geek
>
> Cross-platform adaptive design system (Flutter-first: Android / iOS / Web / Desktop)
>
> **中文**：[中文](README.md)

---

## What It Is

EGD is a cross-platform adaptive design system. Every component is modular and plug-and-play; this repo is both the design spec and a directly importable code base.

**Four Pillars**:

1. **Color**: signature green `#00C48C` as the single accent + neutrals + glass, light/dark dual themes
2. **Floating Nav**: bottom liquid-glass nav bar, drag-to-follow + tap-to-switch
3. **Icons (Lucide)**: official icon library, all SVG, emoji banned
4. **Font (LXGW WenKai)**: the only design font, OFL 1.1, free for commercial use

## Quick Start

```dart
// Import EGD design-system core tokens
import 'EGD/EGD_v1.1/EGD_v1.1.dart';
EGDColor.accent;   // #00C48C
EGDGlass.blur;     // 6

// Floating liquid-glass nav bar (plug & play)
EGDFloatingNav(tabs: [
  EGDTab(icon: Icon(Icons.grid), label: 'Example', page: Page1()),
]);
```

## Structure

```
Elegant Geek Design/
├── Elegant_Geek_Design.md        ← Core doc (Chinese)
├── Elegant_Geek_Design_en.md     ← Core doc (English)
├── README.md / README_en.md      ← This file (Chinese) / English
├── EGD/EGD_v1.1/                 ← Design-system core tokens + showcase demo
├── modules/
│   ├── color/color_v1.0/         ← Palette module
│   └── floating_nav/floating_nav_v1.1/ ← Floating nav module
└── assets/
    ├── fonts/lxgw-wenkai/        ← LXGW WenKai (OFL 1.1)
    └── icons/lucide/             ← Lucide (ISC)
```

## Module Index

| Module | Latest | ZH Preview | EN Preview |
| --- | --- | --- | --- |
| EGD Core | v1.1 "Design System Core" | `EGD/EGD_v1.1/demo/EGD_v1.1_demo.html` | `EGD_v1.1_demo_en.html` |
| color | v1.0 "Signature Green" | `modules/color/color_v1.0/demo/eg_color_v1.0_demo.html` | `..._demo_en.html` |
| floating_nav | v1.1 "Squircle Centered" | `modules/floating_nav/floating_nav_v1.1/demo/eg_floating_nav_v1.1_demo.html` | `..._demo_en.html` |

## Iron Rules

- Light background pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
- Liquid glass is the default container material — glassify everything
- Emoji icons banned; all icons must be SVG (Lucide style)
- Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)

## Third-Party Notice

| Asset | Name | License | Commercial |
| --- | --- | --- | --- |
| Font | LXGW WenKai | SIL OFL 1.1 | Allowed |
| Icons | Lucide | ISC | Allowed |
