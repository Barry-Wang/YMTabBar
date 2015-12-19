
# YMTabBar
  三种不同的自定义的TabBar，
  YMTabBarDemo是只有Title的自定义tabBar，
  LikeSinaTabBarDemo是模仿新浪微博的tabBar，增加一个自定义的按键
  YMAnimatioTabBar 当点击时BarItem有相应的动画

# YMTabBarDemo
只有title的TabBar,可以设置处于选择和非选择状态时title的字体和颜色（解决tabBar使用setTextAttribute时无法为选中和非选中设置不同的字体大小问题）

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


#YMAnimationTabBarDemo
可以为tabBar增加动画，点击tabBarItem时伴随动画。

# How to use

1. 当时用storyBoard时，只需要在storyBoard中把Tab Bar Controller  中的Class设置成 YMTabBarController
2. 当使用代码实现时就可以直接使用YMTabBarController来代替UITabBarController

# 变量
YMTabBarController  只有一个新增的变量  animation。 如果不设置则会为默认的动画，绕着Z轴的旋转，如果需要设置可以按照下面的方式：

        let animation = CABasicAnimation(keyPath: "transform.rotation.y")
        animation.duration = 0.5
        animation.fromValue = 0.0
        animation.toValue = 360 * M_PI / 180
        animation.repeatCount = 1
        
        let tabBarController:YMTabBarContoller = self.tabBarController as! YMTabBarContoller
        tabBarController.animation = animation






