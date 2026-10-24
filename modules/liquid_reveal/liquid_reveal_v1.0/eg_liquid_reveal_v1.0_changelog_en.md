# EGDLiquidReveal · Liquid Immersion Transition (Atom) v1.0

## 2026-10-24 · v1.0 "Water Immersion"

### Added
- Atom `EGDLiquidReveal`: reveals wrapped content via a circular "water immersion" spread from a trigger point
- Params: `origin` (center / corners), `duration`, `curve` (default easeOutCubic), `edgeGlow`, `controller` (external reveal/dismiss)
- Effect: circular mask spread + elastic curve; pair with Stack/IndexedStack for page-level overlay transitions
- Minimal boundary: reveal mask only; content, routing, and timing are external
