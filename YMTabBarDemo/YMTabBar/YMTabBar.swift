//
//  YMTabBar.swift
//  Cat-litter-iOS
//
//  Created by YmWw on 15/12/13.
//  Copyright © 2015年 barry. All rights reserved.
//

import UIKit

class YMTabBar: UITabBar {
    
    
    var selectedColor:UIColor {
        didSet {
            self.layoutSubviews()
        
        }
    }
    
    var unSelectedColor:UIColor {
       
        didSet {
          
            self.layoutSubviews()
        }
        
    }
    
    var selectedFont:UIFont {
       
        didSet {
          
            self.layoutSubviews()
        }
    }
    
    var unSelectedFont:UIFont {
      
        didSet {
          
            self.layoutSubviews()
        }
        
    }
    
    
    
    
    
    var lastSelectIndex:UITabBarItem!
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    required init?(coder aDecoder: NSCoder) {
        
        self.selectedColor = UIColor.redColor()
        self.unSelectedColor = UIColor.greenColor()
        self.selectedFont = UIFont.systemFontOfSize(20.0)
        self.unSelectedFont = UIFont.systemFontOfSize(15.0)
        
        super.init(coder: aDecoder)
        
        self.addObserver(self, forKeyPath: "selectedItem", options: NSKeyValueObservingOptions.New, context: nil)
    }
    
    override init(frame: CGRect) {
        
        self.selectedColor = UIColor.redColor()
        self.unSelectedColor = UIColor.greenColor()
        self.selectedFont = UIFont.systemFontOfSize(20.0)
        self.unSelectedFont = UIFont.systemFontOfSize(15.0)
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellowColor()

        self.addObserver(self, forKeyPath: "selectedItem", options: NSKeyValueObservingOptions.New, context: nil)
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        self.layoutSubviews()
        
    }
    
    override func layoutSubviews() {
        
        for itemBar in self.items! {
            let sub = itemBar.valueForKey("view")
            for item in (sub?.subviews)! {
                if NSStringFromClass(item.classForCoder) == "UITabBarButtonLabel"{
                    let label:UILabel = item as! UILabel
                    if itemBar == self.selectedItem {
                        label.font = self.selectedFont
                        label.textColor = self.selectedColor
                    } else {
                        label.font = self.unSelectedFont
                        label.textColor = self.unSelectedColor
                    }
                    label.sizeToFit()
                }
                
            }
            
        }
        super.layoutSubviews()
    }
    
}










