//
//  AddExpense.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 15/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import SwiftUI

struct AddExpense: View {
    
    @Binding var isModalOn: Bool
    @State private var selection = 1
    @State var val = ""
    @State var cat = "cultura"
    @State var description = ""
    
    var didAddDespesa: (DespesaModel) -> ()
    let spacingButton = 0.3 * UIScreen.main.bounds.width / 2
    let width = 0.7 * UIScreen.main.bounds.width
    
    var body: some View {
        ZStack{

            Color("Background").edgesIgnoringSafeArea(.all)
            VStack{
               
                Text("Add Expense")
                    .font(.system(size:38))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Amarelo"))
                HStack{
                    TextField("Valor", text: $val)
                        .foregroundColor(Color("Branco"))
                        .font(.system(size:38))
                        .keyboardType(.numberPad)
                        .overlay(
                            VStack{
                                Spacer()
                                Rectangle()
                                    .frame(height: 2.0, alignment: .bottom)
                                    .foregroundColor(Color("Branco"))
                            }
                            
                        )

                    Image(self.cat)
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame( width: 34, height: 34)
                        .padding(.leading, 20)
                        .contextMenu {
                            CategoriaRow(catSelected: self.$cat)
                        }
                }
                
                TextField("Description", text: $description)
                    .font(.system(size:27))
                    .overlay(
                        VStack{
                            Spacer()
                            Rectangle()
                                .frame(height: 2.0, alignment: .bottom)
                                .foregroundColor(Color("Branco"))
                        }
                        
                    )
                
                
                    Button(action: {
                        
                        let despesa = DespesaModel(valor: self.val.description, categoria: self.cat, descricao: self.description, createdAt: Date())

                        self.didAddDespesa(despesa)
                        self.isModalOn.toggle()
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Add")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Preto"))
                                .padding(.vertical, 12)
                            Spacer()
                        }
                    })
                    .background(Color("Amarelo"))
                    .cornerRadius(4)
                        .padding(.top, 40)
                
            }.padding(.leading, spacingButton)
            .padding(.trailing, spacingButton)
            
        }

        
    }
    
}

//struct AddExpense_Previews: PreviewProvider {
//    static var previews: some View {
//        AddExpense(isModalOn: <#Binding<Bool>#>)
//    }
//}
