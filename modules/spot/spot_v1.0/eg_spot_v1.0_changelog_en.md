# EGDSpot · Floating Round Button (Atom) v1.0

## 2026-10-24 · v1.0 "Press Bounce"

### Added
- Atom `EGDSpot`: round button base — circle + press scale + bounce + tap only
- Params: `size` (diameter, default 56), `pressScale` (default 1.08), `snapDuration` (default 220ms), `onTap`
- Interaction: press scales to 1.08×, release bounces back (easeOutBack), tap callback
- Minimal boundary: material via `EGDLiquidGlass`, floating via `EGDFloatingWidget`, dragging via `EGDDragSwipe`
