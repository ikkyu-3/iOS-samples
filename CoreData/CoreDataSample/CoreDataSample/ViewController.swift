//
//  ViewController.swift
//  CoreDataSample
//
//  Created by Toru Hasegawa on 2019/05/13.
//  Copyright © 2019 Toru Hasegawa. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var container: NSPersistentContainer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard container != nil else {
            fatalError("This view needs a persistent container.")
        }
        
        insertData()
        
        readData()
    }
    
    func insertData() {
        print("insertData")
        let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: container.viewContext) as! EmployeeMO
        employee.setValue("hoge", forKey: "firstName")
        employee.setValue("foo", forKey: "lastName")
        employee.setValue(Date(), forKey: "birthDay")

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.saveContext()
    }
    
    func readData() {
        print("readData")
        let request = NSFetchRequest<EmployeeMO>(entityName: "Employee")
        do {
            let data = try container.viewContext.fetch(request)
            print(data)
        } catch {
            print("error")
        }
    }
}

