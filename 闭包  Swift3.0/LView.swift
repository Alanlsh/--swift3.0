//
//  LView.swift
//  闭包  Swift3.0
//
//  Created by Alan on 16/11/30.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class LView: UIView {

    /**
       方式一
    typealias myBlocktype = (Int) -> ()
    
    var myBlock: myBlocktype
    */
    
    // 方式二
    var myBlock: (Int) -> ()
    
    
    override init(frame: CGRect) {
        
       
        
        myBlock = {(Int) -> () in
        
        }
        
        // 一定要紧跟初始化属性之后
        super.init(frame: frame)

        let button  = UIButton(frame: CGRect(x: 110, y: 110, width: 110, height:110))
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(buttonClicked), for: UIControlEvents.touchUpInside)
        self.addSubview(button)
        
        
    }
    
    
    func buttonClicked() {
        self.myBlock(10)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    
    
    
    
}
