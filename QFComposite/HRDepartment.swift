//
//  HRDepartment.swift
//  QFComposite
//
//  Created by 情风 on 2018/12/24.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

class HRDepartment: Company {
    
    override func dispaly(_ depth: Int) {
        
        var showStr: String = ""
        for _  in 0..<depth {
            showStr.append("-")
        }
        print(showStr + self.name)
    }
    
    override func lineOfDuty() {
        print("\(self.name) 员工招聘培训管理")
    }
    
}
