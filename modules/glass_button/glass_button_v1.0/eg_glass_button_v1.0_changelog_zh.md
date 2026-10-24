# EGDGlassButton · 液态玻璃按钮（原子件）v1.0

## 2026-10-24 · v1.0「玻璃按钮」

### 新增
- 原子件 `EGDGlassButton`：苹果 iOS 26 液态玻璃风格的按钮
- 参数化复刻"五步玻璃"：模糊底 + 高光边 + 内阴影 + 按压缩小
- 参数：`borderRadius`、`blur`（模糊）、`highlight`（高光）、`innerShadow`（内阴影）、`pressScale`（默认 0.94）、`snapDuration`、`fillColor`
- 交互：按压缩小 0.94×、松手回弹（easeOutBack）
- 极简边界：只管按钮质感 + 按压反馈，悬浮/布局交给其他原子件
