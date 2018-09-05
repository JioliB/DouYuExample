//
//  UIBarButtonItem.swift
//  DouYuExample
//
//  Created by 李贝 on 2018/9/2.
//  Copyright © 2018年 李贝. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    //方法一
//    class func creatItem(imageName: String, highImageName: String, size: CGSize) ->UIBarButtonItem {
//        let btn = UIButton()
//        
//        btn.setImage(UIImage(named: imageName), for: .normal)
//        btn.setImage(UIImage(named: highImageName), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        
//        return UIBarButtonItem(customView: btn)
//    }
    //方法二
    convenience init(imageName: String, highImageName: String = "", size: CGSize = CGSize.zero) {
        let btn = UIButton()
        
        btn.setImage(UIImage(named: imageName), for: .normal)
        if(highImageName != "") {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView: btn)
    }
}
