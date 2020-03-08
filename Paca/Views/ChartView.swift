//
//  ChartView.swift
//  Paca
//
//  Created by Tomás Sousa Pereira on 17/10/2019.
//  Copyright © 2019 Caneca. All rights reserved.
//

import SwiftUI

struct ChartView: View {
    
    @State var pickerSelector = 0
    
    let selectorWidth = 0.4 * UIScreen.main.bounds.width

    var body: some View {
        VStack{
            Text("123")
            .font(.system(size:38))
            .fontWeight(.bold)
            .foregroundColor(Color("Amarelo"))
            
            Picker(selection: $pickerSelector, label:Text(""), content: {
                Text("y").tag(0)
                Text("D").tag(1)
                Text("U").tag(2)
                }).pickerStyle(SegmentedPickerStyle())
                .frame(width: selectorWidth)
            if pickerSelector == 0{
                
                HStack {
                   HStack {
                         Image("cultura")
                         .resizable()
                         .aspectRatio(contentMode: .fill)
                         .frame( width: 32, height: 32)

                    }
                    .frame(width: 70, height: 50)
                   .foregroundColor(Color("Amarelo"))
                   .background(Color("Background"))
                   .cornerRadius(10)
                    HStack {
                            Image("cultura")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame( width: 32, height: 32)

                       }
                       .frame(width: 70, height: 50)
                      .foregroundColor(Color("Amarelo"))
                      .background(Color("Background"))
                      .cornerRadius(10)
                }.padding(.top,15)
               

            }
            if pickerSelector == 1{
                HStack{
                    ZStack(alignment: .bottom){
                        Capsule().frame(width: 20, height: 200).foregroundColor(Color("CapsuleBackground"))
                        Capsule().frame(width: 20, height: 100).foregroundColor(Color("Amarelo"))
                    }
                    ZStack(alignment: .bottom){
                        Capsule().frame(width: 20, height: 200).foregroundColor(Color("CapsuleBackground"))
                        Capsule().frame(width: 20, height: 100).foregroundColor(Color("Amarelo"))
                    }
                }.padding(.top,15)
            }
            if pickerSelector == 2{
                HStack{
                    ZStack(alignment: .bottom){
                        Capsule().frame(width: 20, height: 200).foregroundColor(Color("CapsuleBackground"))
                        Capsule().frame(width: 20, height: 100).foregroundColor(Color("Preto"))
                    }
                    ZStack(alignment: .bottom){
                        Capsule().frame(width: 20, height: 200).foregroundColor(Color("CapsuleBackground"))
                        Capsule().frame(width: 20, height: 100).foregroundColor(Color("Preto"))
                    }
                }.padding(.top,15)
            }

            }
        }
    
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
