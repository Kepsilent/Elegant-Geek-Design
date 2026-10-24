# EGDSplitNavBar · Split Floating Nav Bar (Composite) v1.0

## 2026-10-24 · v1.0 "Split Assembly"

### Added
- Composite `EGDSplitNavBar`: two round buttons (left/right) + liquid-glass "empty frame" floating over the selected item
- The frame glides across the screen elastically (AnimatedPositioned + easeOutBack, 420ms)
- Assembly only: `EGDSpot` (button) + `EGDSpotIndicator` (frame) + `EGDLiquidGlass` (material)
- Controlled: external `selectedIndex` / `onIndexChanged`; composite holds no state
- `SplitNavConfig`: per-layer toggles (glass/indicator; off = not in render tree), blur, button/frame size, insets
- Two items only (assert-guarded)
