//
//  ViewController.swift
//  YMAnimatioTabBar
//
//  Created by YmWw on 15/12/19.
//  Copyright © 2015年 Barry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let animation = CABasicAnimation(keyPath: "transform.rotation.y")
        animation.duration = 0.5
        animation.fromValue = 0.0
        animation.toValue = 360 * M_PI / 180
        animation.repeatCount = 1
        
        let tabBarController:YMTabBarContoller = self.tabBarController as! YMTabBarContoller
        tabBarController.animation = animation
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

