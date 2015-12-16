//
//  ViewController.swift
//  LikeSinaTabBar
//
//  Created by YmWw on 15/12/14.
//  Copyright © 2015年 Barry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tabBar = self.tabBarController?.tabBar as! YMTabBar
        tabBar.sendButton.backgroundColor = UIColor.greenColor()
        tabBar.sendButton.addTarget(self, action: "go", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func go() {
    
        print("come here")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

