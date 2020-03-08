//
//  Despesa.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 16/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//
import Foundation

struct DespesaModel:Codable {
    var id = UUID()
    let valor: String
    let categoria: String
    let descricao: String
    let createdAt: Date
    
    func save(){
        JsonManager.write(object: self)
    }
}

