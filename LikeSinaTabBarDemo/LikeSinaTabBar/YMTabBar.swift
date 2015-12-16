//
//  YMTabBar.swift
//  LikeSinaTabBar
//
//  Created by YmWw on 15/12/14.
//  Copyright © 2015年 Barry. All rights reserved.
//

import UIKit


class YMTabBar: UITabBar {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(sendButton);
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        self.addSubview(sendButton)
    }
    
    
    lazy var sendButton:UIButton = {
        let btn = UIButton()
        btn.setTitle("发送", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.yellowColor()
        btn.frame = CGRectMake(0, 0, 60, 48)
        btn.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        return btn
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)
        var i = 1
        let margin = 10
        let width = (self.bounds.size.width - CGFloat(((self.items?.count)! + 2) * margin)) / CGFloat((self.items?.count)! + 1)
        
        for item in self.subviews {
          
            if item.isKindOfClass(UIButton.classForCoder()) {
              
                item.center = center
            } else if NSStringFromClass(item.classForCoder) == "UITabBarButton" {
                
                if (i <= 2) {
                    
                    let rect = CGRectMake(CGFloat(i * margin) + CGFloat(i - 1) * width, item.frame.origin.y, width, 48)
                
                    item.frame = rect
                    
                } else {
                    
                    print("i = \(i)")
                   let j = i - 2
                    
                    let rect = CGRectMake(center.x + 20 + CGFloat(j * margin) + CGFloat(j - 1) * width, 1, width, 48)
                    print("rect = \(rect)")
                    
                    item.frame = CGRectMake(center.x + 20 + CGFloat(j * margin) + CGFloat(j - 1) * width, 1, width, 48)
                
                }
                
                i++;
            
            }
        
        }
        
    }
    

}
