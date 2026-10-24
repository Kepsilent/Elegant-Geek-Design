# EGDSplitNavBar · 分离式悬浮导航栏（组合件）v1.0

## 2026-10-24 · v1.0「分离拼装」

### 新增
- 组合件 `EGDSplitNavBar`：左右两个圆形按钮 + 当前选中项上浮液态玻璃"空选框"
- 空选框跨屏弹性移动（AnimatedPositioned + easeOutBack，420ms），从左侧按钮平滑移到右侧按钮
- 纯拼装：`EGDSpot`（圆钮）+ `EGDSpotIndicator`（空选框）+ `EGDLiquidGlass`（材质）
- 受控：外部持有 `selectedIndex` / `onIndexChanged`，组合件不自管状态
- 配置 `SplitNavConfig`：玻璃层/指示器层逐层开关（关闭 = 不进渲染树）、模糊、按钮/选框直径、边距
- 仅支持两个导航项（assert 校验）
