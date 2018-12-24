//
//  Company.swift
//  QFComposite
//
//  Created by 情风 on 2018/12/24.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 公司抽象类
class Company: NSObject {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    /// 添加
    func add(_ company: Company) {
        
    }
    
    /// 移除
    func remove(_ company: Company) {
        
    }
    
    /// 展示
    func dispaly(_ depth: Int) {
        print("----")
    }
    
    /// 履行职责
    func lineOfDuty() {
        
    }
    
}
