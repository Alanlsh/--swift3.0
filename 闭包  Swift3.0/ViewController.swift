//
//  ViewController.swift
//  闭包  Swift3.0
//
//  Created by Alan on 16/11/30.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1.最简单的闭包 （）->() 没有参数，没有返回值的函数 如果没有参数，没有返回值 ，in可以省略
        let  b1 = {
        print("Hello Alan")
        }
        
        // 执行闭包
        b1()
        
        
        // 2. 带参数的闭包 参数，返回值，实现代码都是写在{}中
        // {形参列表 -> 返回值类型   // 实现代码}
        // 使用 in 分割定义和实现  b2的类型：（Int）-> ()
        let b2 = { (x: Int) -> () in
            print(x)
        }
        
        // 执行闭包
        b2(100)
        
        
        // 3.带参数返回值的闭包
        // (Int) -> Int
        let b3 = {(y: Int) -> Int in
            return y + 250
        }
        
        // 调用闭包
        print(b3(30))
        
        
        // 4. 异步执行任务，获取数据，通过block/闭包回调，闭包的应用场景和闭包一样
        // 5. 尾随闭包 如果函数的最后一个参数是闭包，函数的参数可以提前结束，最后一个参数直接使用{}包装闭包的代码
        loadData{ (result) in
            print(result)
        }
        
        loadData(completion: {(result) -> () in
        
            print(result)
            
        })
        
        
        
       
        
        
        // 测试闭包功能  实现oc中block的相似功能
        
        let view = LView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        
        view.myBlock = {(X:Int) -> () in
            print("闭包试验成功\(X)")
        }
        
        self.view.addSubview(view)
        
        
        
        
        
        
        
        
        
        
        
        
    }

    
    func loadData(completion: (_ result: [String]) ->()) -> () {
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

