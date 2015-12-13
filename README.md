# YMTabBar
只有title的TabBar,可以设置处于选择和非选择状态时title的字体和颜色（解决tabBar使用setTextAttribute时无法为选中和非选中设置不同的字体大小问题）

# How to use

1. 当时用storyBoard时，只需要在storyBoard中把Tab Bar Controller Scene 中的 Tab Bar 的 Class设置成 YMTabBar
2. 当使用代码实现时需要设置当前的tabBarController.setValue(YMTabBar(),forKey:"tabBar")

# 变量及其默认值
        self.selectedColor = UIColor.redColor()
        self.unSelectedColor = UIColor.greenColor()
        self.selectedFont = UIFont.systemFontOfSize(20.0)
        self.unSelectedFont = UIFont.systemFontOfSize(15.0)

