# EGDGlassButton · Liquid Glass Button (Atom) v1.0

## 2026-10-24 · v1.0 "Glass Button"

### Added
- Atom `EGDGlassButton`: Apple iOS 26 liquid-glass style button
- Parameterized "five-step glass": blurred base + highlight edge + inner shadow + press shrink
- Params: `borderRadius`, `blur`, `highlight`, `innerShadow`, `pressScale` (default 0.94), `snapDuration`, `fillColor`
- Interaction: press shrinks to 0.94×, release bounces (easeOutBack)
- Minimal boundary: glass texture + press feedback only; floating/layout via other atoms
