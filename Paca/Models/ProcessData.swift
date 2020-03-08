//
//  ProcessData.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 18/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation
import SwiftUI

class ProcessData{
    
    @FetchRequest(fetchRequest: DespesaItem.getAllItems() ) private var despesas:FetchedResults<DespesaItem>
    
    static func amount() -> Double{
        
        let amount:Double = 0
            
        return amount
        
    }
}
