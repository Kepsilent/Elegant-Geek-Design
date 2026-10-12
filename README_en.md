# Elegant Geek Design (EGD)

> Pure white base · Glass texture · Emerald soul — elegance meets geek
>
> Cross-platform adaptive design system (Flutter-first: Android / iOS / Web / Desktop)
>
> **中文**：[中文](README.md)

---

## What It Is

EGD is a cross-platform adaptive design system: a design spec plus previewable component demos, all distributed via Releases.

**Four Pillars**:

1. **Color**: signature green `#00C48C` as the single accent + neutrals + glass, light/dark dual themes
2. **Floating Nav**: bottom liquid-glass nav bar, drag-to-follow + tap-to-switch
3. **Icons (Lucide)**: official icon library, all SVG, emoji banned
4. **Font (LXGW WenKai)**: the only design font, OFL 1.1, free for commercial use

For AI agents, see [agents.md](agents.md).

## How to Use

Everything lives in **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)**:

- **Portable bundle**: `Elegant_Geek_Design_v1.1.zip` — unzip once: core docs + core files (modules) + all demo previews
- **Individual files**:
  - Core files (modules): `eg_color_v1.0.dart`, `eg_floating_nav_v1.1.dart` — preview each via its demo
  - Demo previews: `EGD_v1.1_demo.html`, `eg_*_demo.html` (open in a browser; in-page ZH/EN switch)
  - Core docs (design spec): `Elegant_Geek_Design_v1.1.md` (ZH/EN)

**Third-party add-ons** (grab as needed):

| Add-on | Purpose | Official Link |
| --- | --- | --- |
| LXGW WenKai | Design font | https://github.com/lxgw/LxgwWenKai |
| Lucide Icons | Icon library | https://lucide.dev |

## Iron Rules

- Light background pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
- Liquid glass is the default container material — glassify everything
- Emoji icons banned; all icons must be SVG (Lucide style)
- Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)
