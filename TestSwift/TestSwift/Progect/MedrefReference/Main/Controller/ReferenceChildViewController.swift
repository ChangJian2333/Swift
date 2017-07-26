//
//  ReferenceChildViewController.swift
//  TestSwift
//
//  Created by 常见 on 2017/6/30.
//  Copyright © 2017年 Foundation. All rights reserved.
//

import UIKit

class ReferenceChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let name : String = "zhangsan";
        print("\(name)");
        
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        let apples = 3
        let oranger = 5
        let appleSummary = "I have \(apples) apples"
        let fruitSummary = "I have \(apples + oranger) \(widthLabel) pieces of fruit \(appleSummary) "
        
        let array = ["不","可变","数组"]
        
        var mutableArray = [label,fruitSummary];
        let first = mutableArray[0]
        
        var diction = [
            "key" : "value",
            "modelclass" : "model",
        ]
        
        let value = diction["key"]
        
        let enptyArray = [String]()
        let enptyDictionary = [String:Float]()
        
        let individualScores = [75,43,103,87,12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        print(teamScore)
        
        
        
        
        
        
        let vagetable = "red pepper"
        switch vagetable {
        case "celery":
            print("someone  like   you ");
        case let someone where someone.hasSuffix("pepper"):
            print("someone love you");
        default:
            print("someone .....");
        }
        
        
        let interestingNumbers = [
            "Prime": [2,3,5,6,11,13],
            "Fribonacci":[1,1,2,3,5,8],
            "Square":[1,4,9,16,25],
        ]
        
        var largest = 0
        var kin = "hhh"
        
        
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number;
                    kin = kind;
                }
            }
        }
        
        print(largest);
        
        
        
        
        
        
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
