//
//  ConcreteCompany.swift
//  QFComposite
//
//  Created by 情风 on 2018/12/24.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

class ConcreteCompany: Company {
    
    var children: [Company] = []
    
    override func add(_ company: Company) {
        self.children.append(company)
    }
    
    override func remove(_ company: Company) {
        var removeIdx: Int = -1;
        
        for i in 0..<self.children.count {
            if company.name == self.children[i].name {
                removeIdx = i
            }
        }
        if removeIdx != -1 {
            self.children.remove(at: removeIdx)
        }
    }
    
    override func dispaly(_ depth: Int) {
        
        var showStr: String = ""
        for _  in 0..<depth {
            showStr.append("-")
        }
        print(showStr + self.name)
        
        for child in children {
            child.dispaly(depth + 2)
        }
        
    }
    
    override func lineOfDuty() {
        for child in self.children {
            child.lineOfDuty()
        }
    }
    
}
