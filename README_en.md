# Elegant Geek Design (EGD)

> Pure white base · Glass texture · Emerald soul — elegance meets geek
>
> Cross-platform adaptive design system (Flutter-first: Android / iOS / Web / Desktop)
>
> **中文**：[中文](README.md)

---

## What It Is

EGD is a cross-platform adaptive design system. Every component is modular and plug-and-play, all distributed via Release.

**Four Pillars**:

1. **Color**: signature green `#00C48C` as the single accent + neutrals + glass, light/dark dual themes
2. **Floating Nav**: bottom liquid-glass nav bar, drag-to-follow + tap-to-switch
3. **Icons (Lucide)**: official icon library, all SVG, emoji banned
4. **Font (LXGW WenKai)**: the only design font, OFL 1.1, free for commercial use

## How to Use

Everything lives in **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** — download any file directly, or grab the full portable zip and unzip once:

**Portable bundle**: `Elegant_Geek_Design_v1.1.zip` (all modules + core docs + previews, ready to use)

**File list** (raw files, downloadable individually):

| File | What it is |
| --- | --- |
| `EGD_v1.1.dart` | Design-system core tokens (color / glass / space / text) |
| `eg_color_v1.0.dart` | Palette module (signature green) |
| `eg_floating_nav_v1.1.dart` | Floating liquid-glass nav bar module |
| `Elegant_Geek_Design.md` | Orchestration doc (Chinese core) |
| `Elegant_Geek_Design_en.md` | Orchestration doc (English) |
| `eg_*_demo.html` | Per-module ZH/EN previews (open in a browser) |

Unzip / download, copy into your Flutter project, `import` the corresponding `.dart` — plug & play.

**Third-party add-ons** (grab as needed):

| Add-on | Purpose | Official Link |
| --- | --- | --- |
| LXGW WenKai | Design font | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | Icon library | https://lucide.dev |

For AI agents, see [agents.md](agents.md).

## Iron Rules

- Light background pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
- Liquid glass is the default container material — glassify everything
- Emoji icons banned; all icons must be SVG (Lucide style)
- Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)
