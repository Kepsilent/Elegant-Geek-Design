# floating_nav_bar CHANGELOG

## v1.0 (2026-10-13)
- Floating nav bar composite v1.0 "Atom Assembly": EGDFloatingWidget + EGDLiquidGlass + EGDDragSwipe + EGDScrollHide (optional) + config toggles, assembly only
- Refactored from legacy floating_nav v1.1 "Squircle Centered": old module decomposed into atoms, all capabilities carried over
- Inherited & kept: 4 sample tabs · squircle indicator (radius 18px) strictly centered · drag-follow (indicator center follows finger) · press scale 1.15× · elastic snap · tap-to-switch · boundary bounce
- Added: scroll hide (hide on content scroll down / show on scroll up) · feature toggle panel (float / glass / drag / scroll-hide layers independently togglable; off = layer not in the render tree)
