
# YMTabBar
  两种不同的自定义的TabBar，第一种是只有Title的自定义tabBar， 第二个是模仿新浪微博的tabBar

# YMTabBarDemo


# How to use

1. 当时用storyBoard时，只需要在storyBoard中把Tab Bar Controller Scene 中的 Tab Bar 的 Class设置成 YMTabBar
2. 当使用代码实现时需要设置当前的tabBarController.setValue(YMTabBar(),forKey:"tabBar")

# 变量及其默认值
        self.selectedColor = UIColor.redColor()
        self.unSelectedColor = UIColor.greenColor()
        self.selectedFont = UIFont.systemFontOfSize(20.0)
        self.unSelectedFont = UIFont.systemFontOfSize(15.0)

#LikeSinaTabBarDemo
仿照新浪微博的tabBar，中间可以添加一个自定义的按钮。

# How to use

1. 当时用storyBoard时，只需要在storyBoard中把Tab Bar Controller Scene 中的 Tab Bar 的 Class设置成 YMTabBar
2. 当使用代码实现时需要设置当前的tabBarController.setValue(YMTabBar(),forKey:"tabBar")

# 变量
        let tabBar = self.tabBarController?.tabBar as! YMTabBar
        tabBar.sendButton.backgroundColor = UIColor.greenColor()
        tabBar.sendButton.addTarget(self, action: "go", forControlEvents: UIControlEvents.TouchUpInside)
