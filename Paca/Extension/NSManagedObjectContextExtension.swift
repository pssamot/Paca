//
//  NSManagedObjectContextExtension.swift
//  CoreData
//
//  Created by Tomás Sousa Pereira on 18/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext{
    
    static var current: NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
