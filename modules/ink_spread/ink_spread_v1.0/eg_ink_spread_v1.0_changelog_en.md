# EGDInkSpread · Ink Spread Transition (Atom) v1.0

## 2026-10-24 · v1.0 "Ink Seepage"

### Added
- Atom `EGDInkSpread`: seeps in from multiple origins with blurred edges, like ink spreading on paper
- Params: `origins` (seepage start points, 0-1 ratio coords), `duration`, `curve` (default easeInOutCubic), `edgeBlur`
- Effect: multi-circle union mask spread, several origins seep in at once
- Complements `EGDLiquidReveal`: single-point water immersion vs multi-point ink; fits different block switching
