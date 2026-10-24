# EGDSpot · 悬浮圆钮（原子件）v1.0

## 2026-10-24 · v1.0「按压回弹」

### 新增
- 原子件 `EGDSpot`：圆形按钮基座，只管"圆 + 按压放大 + 回弹 + 点击"
- 参数：`size`（直径，默认 56）、`pressScale`（按压放大倍率，默认 1.08）、`snapDuration`（回弹时长，默认 220ms）、`onTap`（点击回调）
- 交互：按压放大 1.08×、松手回弹（easeOutBack）、点击回调
- 极简边界：材质交给 `EGDLiquidGlass`、悬浮交给 `EGDFloatingWidget`、拖动交给 `EGDDragSwipe`
