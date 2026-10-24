# EGDSpotIndicator · Focus Frame (Atom) v1.0

## 2026-10-24 · v1.0 "Empty Focus Frame"

### Added
- Atom `EGDSpotIndicator`: translucent liquid-glass "empty frame" that highlights the selected item
- Params: `size` (default 64), `active`, `activeScale` (default 1.12), `duration`, `blur`
- Effect: borderless translucent liquid glass (blur + prism refraction at edge), scales to 1.12× when active, soft emerald glow, elastic transition (easeOutBack)
- Minimal boundary: frame + scale only; movement via AnimatedAlign/AnimatedPositioned, switch logic by composite
