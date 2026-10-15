# floating_nav_bar CHANGELOG

## v1.0（2026-10-13）
- 悬浮导航栏组合件 v1.0「原子拼装」：EGDFloatingWidget + EGDLiquidGlass + EGDDragSwipe + EGDScrollHide（可选）+ 配置开关，只装配不写新逻辑
- 由原 floating_nav v1.1「方圆形居中」重构而来：旧模块拆解为原子件，能力全部承接
- 继承并保留：4 示例 tab · 方圆形指示器（radius 18px）严格居中 · 跟手拖动（指示器中心跟手）· 拖动放大 1.15× · 松手弹性吸附 · 点击切换 · 边界橡皮筋
- 新增：滚动折叠（内容下滑隐藏 / 上滑展开）· 功能开关面板（悬浮 / 玻璃 / 拖动 / 滚动折叠 各层可独立启用禁用，关闭 = 该层不进渲染树）
