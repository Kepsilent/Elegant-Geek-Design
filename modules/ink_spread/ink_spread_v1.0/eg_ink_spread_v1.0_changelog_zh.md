# EGDInkSpread · 墨迹漫开转场（原子件）v1.0

## 2026-10-24 · v1.0「墨迹渗入」

### 新增
- 原子件 `EGDInkSpread`：从多个圆心渗入、边缘模糊扩散，像墨迹在纸上漫开
- 参数：`origins`（渗入起点列表，0~1 比例坐标）、`duration`、`curve`（默认 easeInOutCubic）、`edgeBlur`
- 效果：多圆 union 遮罩扩散，多圆心一起渗入
- 与 `EGDLiquidReveal` 互补：单点水浸 vs 多点墨迹，适合不同区块切换
