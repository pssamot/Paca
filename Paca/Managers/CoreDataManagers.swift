//
//  CoreDataManagers.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 18/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager{

    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    var moc: NSManagedObjectContext

    private init(moc: NSManagedObjectContext){
        self.moc = moc
    }
    
    func getAllItems() -> [Despesa] {
         var items = [Despesa]()
                
        let request: NSFetchRequest<Despesa> = Despesa.fetchRequest()
        do{
            items = try self.moc.fetch(request)
        }catch{
            print(error)
        }
        return items
}
    
}
