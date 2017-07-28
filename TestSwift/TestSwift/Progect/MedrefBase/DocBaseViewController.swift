//
//  DocBaseViewController.swift
//  TestSwift
//
//  Created by 常见 on 2017/6/29.
//  Copyright © 2017年 Foundation. All rights reserved.
//

import UIKit

class DocBaseViewController: UIViewController {

    
    var navTitle = "主页"
    var itemTitle = "重写"
//    var itemTitle: String {
//        get {
//            
////            if (itemTitle.isEqual("执行了set" as String)) {
////                return itemTitle
////            }else{
////                return "重写"
////            }
//            return "重写"
//        }
//        set {
//            itemTitle = "执行了set"
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public func testCommonMethod() -> String {
        print("调用父类的testCommonMethod");
        return "testCommonMethod";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
