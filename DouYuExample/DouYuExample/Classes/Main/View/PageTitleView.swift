//
//  PageTitleView.swift
//  DouYuExample
//
//  Created by 李贝 on 2018/9/5.
//  Copyright © 2018年 李贝. All rights reserved.
//

import UIKit

class PageTitleView: UIView {
    //定义属性
    private var titles : [String]
    
    //自定义构造函数
    init(frame: CGRect, titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
