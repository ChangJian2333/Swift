//
//  DocSlideSwitchView.swift
//  TestSwift
//
//  Created by 常见 on 2017/6/30.
//  Copyright © 2017年 Foundation. All rights reserved.
//

import UIKit

class DocSlideSwitchView: UIView {

    // 属性
    var topScrollView = UIScrollView()
    var rootScrollView = UIScrollView()
    
    func setConstraints() {
        self.addSubview(topScrollView)
        self.addSubview(rootScrollView)
        rootScrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(self)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var count: Int
//    
//    
//    init(count: Int) {
//        self.count = count
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    

}
