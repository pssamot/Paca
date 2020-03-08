//
//  DespesasList.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 18/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//
import Foundation
import SwiftUI
import Combine

class OrderListViewModel: ObservableObject {
    
    @Published //Allows to the subscrivers check if changed
    var orders = [OrderViewModel]()
    
    init(){
        fetchAll()
    }
    func fetchAll(){
        self.orders = CoreDataManager.shared.getAllItems().map(OrderViewModel.init)
    }
}


class OrderViewModel{
    
    var name = ""
    var type = ""
    
    init(order: Despesa){
        self.name = order.descricao!
        self.type = order.categoria!
    }
    
}

//
//class DespesasModel: ObservableObject {
//
//    @Published //Allows to the subscrivers check if changed
//    var orders = [Despesa]()
//
//    init(){
//        fetchAll()
//    }
//    func fetchAll(){
//        self.orders = CoreDataManager.shared.getAllItems().map(DespesaViewModel.init)
//    }
//}
//
//
//class DespesaViewModel{
//
//    var id:UUID
//    let valor: Double
//    let categoria: String
//    let descricao: String
//    let createdAt: Date
//
//    init(despesa: Despesa){
//        self.id = despesa.id!
//        self.valor = despesa.valor
//        self.categoria = despesa.categoria!
//        self.descricao = despesa.descricao!
//        self.createdAt = despesa.createdAt!
//    }
//
//}
