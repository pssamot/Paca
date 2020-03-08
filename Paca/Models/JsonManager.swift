//
//  DataManager.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 18/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import Foundation

public class JsonManager{
    
    static func write(object:DespesaModel){

        do {
            let fileURL = try FileManager.default
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent("d.json")

            try JSONEncoder().encode(object)
                .write(to: fileURL)
        } catch {
            print(error)
        }
    }
    
    static func read()-> Int{
        do {
            let fileURL = try FileManager.default
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                .appendingPathComponent("d.json")

            let data = try Data(contentsOf: fileURL)
            let foo = try JSONDecoder().decode(DespesaModel.self, from: data)
            print(foo)
        } catch {
            print(error)
        }
         return 0
    }
}

