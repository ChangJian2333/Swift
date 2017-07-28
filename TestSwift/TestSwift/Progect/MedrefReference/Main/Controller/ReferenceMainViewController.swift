//
//  ReferenceMainViewController.swift
//  TestSwift
//
//  Created by 常见 on 2017/6/29.
//  Copyright © 2017年 Foundation. All rights reserved.
//

import UIKit

class ReferenceMainViewController: DocBaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let method = self.testCommonMethod();
        print("%@",method);
        
        
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

        var optionalString: String? = "Hello"
        print(optionalString == nil)
        var optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        
        optionalName = nil
        if let newName = optionalName {
            print(newName);
        }
        
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
        
        print(largest,kin);

        var n = 2
        while n < 100 {
            n = n * 2
        }
        
        print(n)
        
        var m = 2
        
        repeat {
            m = m * 2
        } while m < 100
        
        print(m);
        
        var total = 0
        
        for i in 0..<4 {
            total += i
        }
        print("total= \(total)")
        
        var count = 0
        
        
        for i in 0...4 {
            count += i
        }
        print("count= \(count)")
        
        let backValue =  greet("张三",day:"2017-07-25")
        print(backValue)
        
        let tagN = greetTag(hhh: "张安", day: "2017-07-25")
        print(tagN)
        let statistics = calculateStatistics(scores: [5,3,12,28,2])
        print(statistics)
        print(statistics.sum)
        print(statistics.2)
        
        let sum = sumOf(numbers: 12, 13, 28, 27)
        print(sum)
        
        let add = returnFifteen()
        print(add)
        
        let has = hasAnyMatches(list: [1,10,12], condition: lessThanTen(number:))
        print(has)
        
        var numbers = [20, 19, 7, 12]
        
        
        
        let block = numbers.map({
            (number: Int) -> Int in
            let result = 3 * number
            return result
        })
        
        print(block)
        
        self.navTitle = "hhh"
        
        print(navTitle)
        print(self.navTitle)
        
        print(itemTitle)
        print(self.itemTitle)
        
        self.itemTitle = "子类赋值"
        
        print(itemTitle)
        print(self.itemTitle)
        
        
        
        
    }
    // 省略标签
    func greet(_ person : String, day : String) -> String {
        return "我是返回值 \(person) 和 \(day)"
    }
    // 自定义标签
    func greetTag(hhh person : String, day : String) -> String {
        return "我是返回值 \(person) 和 \(day)"
    }
    
    // 返回多数据元组
    func calculateStatistics(scores: [Int]) -> (min: Int , max : Int , sum : Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            }else if score < min {
                min = score
            }
            sum += score
        }
        
        return (min, max, sum)
        
    }
    
    // 多参数函数
    func sumOf(numbers: Int...) -> Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
    
    // 函数嵌套
    func returnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    }

    // 返回值为函数
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    
    func lessThanTen(number: Int) -> Bool {
        if number > 10 {
            return true
        }
        return false
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
