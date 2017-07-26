//
//  DocTabBarController.swift
//  TestSwift
//
//  Created by 常见 on 2017/6/29.
//  Copyright © 2017年 Foundation. All rights reserved.
//

import UIKit

class DocTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUpUI();
    }
    
    func setUpUI() {
        self.addChildVController(className: "ReferenceMainViewController", title: "参考", imageName: "reference_unselect", selectedImage: "reference_select");
        self.addChildVController(className: "ContinueMainViewController", title: "继教", imageName: "continue_unselect", selectedImage: "continue_select");
        self.addChildVController(className: "PatientMainViewController", title: "患者", imageName: "patient_unselect", selectedImage: "patient_select");
        self.addChildVController(className: "MySpaceMainViewController", title: "我", imageName: "personal_unselect", selectedImage: "personal_select");
        self.tabBar.tintColor = UIColor.green;
    }
    
    func addChildVController(className: String , title: String , imageName: String , selectedImage: String) {
        let childVC = self.VCSTRING_TO_VIEWCONTROLLER(className);
        childVC?.tabBarItem = UITabBarItem.init(title: title, image: UIImage.init(named: imageName), selectedImage: UIImage.init(named: selectedImage));
        let nav = UINavigationController.init(rootViewController: childVC!);
        self.addChildViewController(nav);
        
    }
    
    func VCSTRING_TO_VIEWCONTROLLER(_ childControllerName: String) -> UIViewController?{
        
        // 1.获取命名空间
        // 通过字典的键来取值,如果键名不存在,那么取出来的值有可能就为没值.所以通过字典取出的值的类型为AnyObject?
        guard let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] else {
            print("命名空间不存在")
            return nil
        }
        // 2.通过命名空间和类名转换成类
        let cls : AnyClass? = NSClassFromString((clsName as! String) + "." + childControllerName)
        
        // swift 中通过Class创建一个对象,必须告诉系统Class的类型
        guard let clsType = cls as? UIViewController.Type else {
            print("无法转换成UIViewController")
            return nil
        }
        // 3.通过Class创建对象
        let childController = clsType.init()
        
        return childController
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
