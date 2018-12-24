//
//  ViewController.swift
//  QFComposite
//
//  Created by 情风 on 2018/12/24.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 组合模式：将对象组合成树形结构以表示“部分-整体”的层次结构。组合模式使得用户对单个对象和组合对象的使用具有一致性。

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let root: ConcreteCompany = ConcreteCompany("北京总公司")
        root.add(HRDepartment("总公司人力资源部"))
        root.add(FinanceDepartment("总公司财务部"))
        
        let company: ConcreteCompany = ConcreteCompany("上海华东分公司")
        company.add(HRDepartment("华东分公司人力资源部"))
        company.add(FinanceDepartment("华东分公司财务部"))
        root.add(company)
        
        let company1: ConcreteCompany = ConcreteCompany("南京办事处")
        company1.add(HRDepartment("南京办事处人力资源部"))
        company1.add(FinanceDepartment("南京办事处财务部"))
        company.add(company1)
        
        
        let company2: ConcreteCompany = ConcreteCompany("杭州办事处")
        company2.add(HRDepartment("杭州办事处人力资源部"))
        company2.add(FinanceDepartment("杭州办事处财务部"))
        company.add(company2)
        
        print("组织结构图：\n")
        print(root.dispaly(1))
        
        print("职责：\n")
        print(root.lineOfDuty())
        
    }
    
    
}

