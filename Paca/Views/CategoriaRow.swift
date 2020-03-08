//
//  CategoryRow.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 15/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import SwiftUI

struct CategoriaRow: View {
    
    @Binding var catSelected: String
    
    let categorias = [Categoria(nome: "cultura"), Categoria(nome: "lazer"), Categoria(nome: "gelado"), Categoria(nome: "comida"), Categoria(nome: "compras")]

    var body: some View {
        VStack {
            ForEach(categorias) { categoria in
                Button(action: {
                    self.catSelected = categoria.nome
                }, label: {
                    HStack{
                        Text("\(categoria.nome)")
                        Image(categoria.nome)

                    }
                     
                })
               
            }
        }
    }
}

//struct CategoriaRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryRow(catSelected: <#Binding<String>#>)
//    }
//}
