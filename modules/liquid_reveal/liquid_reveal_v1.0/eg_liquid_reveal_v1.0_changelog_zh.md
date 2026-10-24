# EGDLiquidReveal · 液态浸染转场（原子件）v1.0

## 2026-10-24 · v1.0「水浸揭晓」

### 新增
- 原子件 `EGDLiquidReveal`：从触发点像"水浸"一样圆形扩散揭晓被包裹内容
- 参数：`origin`（揭晓起点：中心/四角）、`duration`、`curve`（默认 easeOutCubic）、`edgeGlow`（边缘高光）、`controller`（外部触发 reveal/dismiss）
- 效果：圆形遮罩扩散 + 弹性曲线，配合 Stack/IndexedStack 可做页面级覆盖转场
- 极简边界：只管"揭晓遮罩"，内容、路由、动画节奏由外部控制
