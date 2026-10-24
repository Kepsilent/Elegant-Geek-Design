# EGDSpotIndicator · 聚焦选框（原子件）v1.0

## 2026-10-24 · v1.0「空框聚焦」

### 新增
- 原子件 `EGDSpotIndicator`：透明液态玻璃"空选框"，框住当前选中项
- 参数：`size`（框径，默认 64）、`active`（选中态）、`activeScale`（放大倍率，默认 1.12）、`duration`（过渡时长）、`blur`（玻璃模糊）
- 效果：选中放大 1.12×、翠绿高光边、弹性过渡（easeOutBack）
- 极简边界：只做"空框 + 放大"，位移交给 AnimatedAlign/AnimatedPositioned，切换逻辑由组合件控制
