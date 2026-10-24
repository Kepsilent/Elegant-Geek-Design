# Elegant Geek Design (EGD)

> Pure white base · Glass texture · Emerald soul — elegance meets geek
>
> Cross-platform adaptive design system (Flutter-first: Android / iOS / Web / Desktop)
>
> **中文**：[中文](README.md)

---

## What It Is

EGD is a cross-platform adaptive design system: **atom layer (base primitives) → composite layer (assembled on atoms)**. The design spec, component sources and previewable demos all live in this repo; the portable bundle (with third-party assets) ships via Releases.

**Four Pillars**:

1. **Color**: signature green `#00C48C` as the single accent + neutrals + glass, light/dark dual themes
2. **Floating Nav**: composite = floating + liquid glass + drag + scroll-hide + feature toggles
3. **Icons (Lucide)**: official icon library, all SVG, emoji banned
4. **Font (LXGW WenKai)**: the only design font, OFL 1.1, free for commercial use

## How to Use

**For AI agents, see [agents.md](agents.md).**

- **Portable bundle** (recommended): grab the latest `Elegant_Geek_Design_v<version>.zip` from **[Releases](https://github.com/Kepsilent/Elegant-Geek-Design/releases)** — unzip once and use: core docs (ZH/EN) + all modules (dart + changelog + demo) + third-party assets (LXGW WenKai / Lucide, original licenses included)
- **Live preview**: click any demo below to open it in the browser (GitHub Pages, in-page ZH/EN switch); component sources and the design spec live in the matching directories

## Component Showcase (Demo Previews)

Live previews are served by GitHub Pages and render on click; the source column links to files in the repo.

| Module | Layer | Version | Live Preview | Source |
| --- | --- | --- | --- | --- |
| Base showcase EGD | Core | v1.1 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/EGD/EGD_v1.1/demo/EGD_v1.1_demo.html) | [EGD_v1.1.dart](EGD/EGD_v1.1/EGD_v1.1.dart) |
| color | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/color/color_v1.0/demo/eg_color_v1.0_demo.html) | [eg_color_v1.0.dart](modules/color/color_v1.0/eg_color_v1.0.dart) |
| liquid_glass | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/liquid_glass/liquid_glass_v1.0/demo/eg_liquid_glass_v1.0_demo.html) | [eg_liquid_glass_v1.0.dart](modules/liquid_glass/liquid_glass_v1.0/eg_liquid_glass_v1.0.dart) |
| drag_swipe | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/drag_swipe/drag_swipe_v1.0/demo/eg_drag_swipe_v1.0_demo.html) | [eg_drag_swipe_v1.0.dart](modules/drag_swipe/drag_swipe_v1.0/eg_drag_swipe_v1.0.dart) |
| floating_widget | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/floating_widget/floating_widget_v1.0/demo/eg_floating_widget_v1.0_demo.html) | [eg_floating_widget_v1.0.dart](modules/floating_widget/floating_widget_v1.0/eg_floating_widget_v1.0.dart) |
| scroll_hide | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/scroll_hide/scroll_hide_v1.0/demo/eg_scroll_hide_v1.0_demo.html) | [eg_scroll_hide_v1.0.dart](modules/scroll_hide/scroll_hide_v1.0/eg_scroll_hide_v1.0.dart) |
| toggle | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/toggle/toggle_v1.0/demo/eg_toggle_v1.0_demo.html) | [eg_toggle_v1.0.dart](modules/toggle/toggle_v1.0/eg_toggle_v1.0.dart) |
| floating_nav_bar | Composite | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/floating_nav_bar/floating_nav_bar_v1.0/demo/eg_floating_nav_bar_v1.0_demo.html) | [eg_floating_nav_bar_v1.0.dart](modules/floating_nav_bar/floating_nav_bar_v1.0/eg_floating_nav_bar_v1.0.dart) |
| spot | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/spot/spot_v1.0/demo/eg_spot_v1.0_demo.html) | [eg_spot_v1.0.dart](modules/spot/spot_v1.0/eg_spot_v1.0.dart) |
| spot_indicator | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/spot_indicator/spot_indicator_v1.0/demo/eg_spot_indicator_v1.0_demo.html) | [eg_spot_indicator_v1.0.dart](modules/spot_indicator/spot_indicator_v1.0/eg_spot_indicator_v1.0.dart) |
| liquid_reveal | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/liquid_reveal/liquid_reveal_v1.0/demo/eg_liquid_reveal_v1.0_demo.html) | [eg_liquid_reveal_v1.0.dart](modules/liquid_reveal/liquid_reveal_v1.0/eg_liquid_reveal_v1.0.dart) |
| ink_spread | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/ink_spread/ink_spread_v1.0/demo/eg_ink_spread_v1.0_demo.html) | [eg_ink_spread_v1.0.dart](modules/ink_spread/ink_spread_v1.0/eg_ink_spread_v1.0.dart) |
| sticker | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/sticker/sticker_v1.0/demo/eg_sticker_v1.0_demo.html) | [eg_sticker_v1.0.dart](modules/sticker/sticker_v1.0/eg_sticker_v1.0.dart) |
| glass_button | Atom | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/glass_button/glass_button_v1.0/demo/eg_glass_button_v1.0_demo.html) | [eg_glass_button_v1.0.dart](modules/glass_button/glass_button_v1.0/eg_glass_button_v1.0.dart) |
| split_nav_bar | Composite | v1.0 | [Live preview](https://kepsilent.github.io/Elegant-Geek-Design/modules/split_nav_bar/split_nav_bar_v1.0/demo/eg_split_nav_bar_v1.0_demo.html) | [eg_split_nav_bar_v1.0.dart](modules/split_nav_bar/split_nav_bar_v1.0/eg_split_nav_bar_v1.0.dart) |

> Note: for the full font rendering, download the portable bundle (includes the LXGW WenKai ttf); Pages preview falls back to system fonts, interactions unaffected.

## Iron Rules

- Light background pure white `#FFFFFF`, dark pure black `#000000`; no colorful / gradient backgrounds
- Liquid glass is the default container material — glassify everything
- Emoji icons banned; all icons must be SVG (Lucide style)
- Contrast: body ≥ 4.5:1, large text ≥ 3:1 (WCAG 2.2 AA)
