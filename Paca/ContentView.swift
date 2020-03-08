//
//  ContentView.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 17/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var isModalOn = false
    @ObservedObject var despesasList: OrderListViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                ChartView()
                List{
                    ForEach(self.despesasList.items, id: \.id ){ d in
                        Text(d.descricao)
                    }
                }
//                ScrollView{
//                    VStack(alignment: .leading){
//                        ForEach(self.despesas){ despesa in
//                            DespesaRow(valor: despesa.valor,
//                                       createdAt: despesa.createdAt!,
//                                       descricao: despesa.descricao!,
//                                       categoria: despesa.categoria ?? "cultura")
//                        }
//                    }.padding(.all, 10)
//                }
                .navigationBarTitle("Paca")
                .navigationBarItems(trailing: Button(action: {
                    print("Tentou adicionar pessoas")
                    self.isModalOn = true
                }, label: {
                    VStack{
                        Spacer()
                        Image(uiImage: UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 25, weight: .heavy, scale: .large))!)
                            .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    }


                }))
                .sheet(isPresented: $isModalOn, content: {

                    AddExpense(isModalOn: self.$isModalOn, didAddDespesa: {
                        despesa in

//                        despesa.save()
//                        let newDespesa = DespesaItem(context: self.managedObjectContext)
//                        newDespesa.descricao = despesa.descricao
//                        newDespesa.createdAt = despesa.createdAt
//                        newDespesa.categoria = despesa.categoria
//                        newDespesa.valor = String(despesa.valor)
//
//                        do{
//                            try self.managedObjectContext.save()
//                        }catch{
//                            print(error)
//                        }
                    })
                })
            }
        }
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
