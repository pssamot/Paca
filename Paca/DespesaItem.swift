//
//  DespesaItem.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 17/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation
import CoreData
import SwiftUI
public class DespesaItem:NSManagedObject, Identifiable{
    @NSManaged public var createdAt:Date?
    @NSManaged public var descricao:String?
    @NSManaged public var valor:String?
    @NSManaged public var categoria:String?
}

extension DespesaItem{
     static func getAllItems() -> NSFetchRequest<DespesaItem>{
        
            let request:NSFetchRequest<DespesaItem> = DespesaItem.fetchRequest() as! NSFetchRequest<DespesaItem>
            
            let sortDescriptor =  NSSortDescriptor(key: "createdAt", ascending: false)
            
            request.sortDescriptors = [sortDescriptor]
            
            return request
           
       }
}
