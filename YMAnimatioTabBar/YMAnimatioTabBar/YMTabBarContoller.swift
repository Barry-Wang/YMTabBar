//
//  YMTabBarContoller.swift
//  Cat-litter-iOS
//
//  Created by YmWw on 15/12/19.
//  Copyright © 2015年 barry. All rights reserved.
//

import UIKit

class YMTabBarContoller: UITabBarController {

    lazy var animation:CABasicAnimation = {
        
    
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        animation.duration = 0.5
        animation.fromValue = 0.0
        animation.toValue = 360 * M_PI / 180
        animation.repeatCount = 1
        
        return animation
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        
        
        let view = item.valueForKey("view");
        for item in (view?.subviews)! {
           
            if NSStringFromClass(item.classForCoder) == "UITabBarSwappableImageView" {
               // item.transform = CGAffineTransformIdentity
                
                item.layer.addAnimation(animation, forKey: "123")

            
            }
        }
    }
    
    override func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem]) {
        
        print("willBeginCustomizingItem \(items)")
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
