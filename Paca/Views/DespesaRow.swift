//
//  SwiftUIView.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 16/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import SwiftUI

struct DespesaRow: View {
    
    var valor: String
    var createdAt: Date
    var descricao:String
    var categoria:String

    var body: some View {
        
       
        
        HStack {
            Image("\(categoria)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame( width: 32, height: 32)
            
            VStack(alignment: .leading){
                Text("\(descricao) ")
                Text(DateHandler.getFormattedDate(date:createdAt,formatter: "HH:mm"))
                    .foregroundColor(Color.gray)
                    .font(.system(size:10))
                    .padding(.top, 5)
                
            }
            
            Spacer()
            Text("\(valor) ")
        }
        .padding()
        .foregroundColor(Color("Amarelo"))
        .background(Color("Background"))
        .cornerRadius(10)
        
    }
}

//struct DespesaRow_Previews: PreviewProvider {
//    static var previews: some View {
//        DespesaRow(valor: "123", descricao: "comer", categoria: "cultura", createdAt: )
//    }
//}
