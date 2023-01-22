//
//  ContentView.swift
//  SampleApp
//
//  Created by yaguchisato on 2021/11/26.
//　メインView

import SwiftUI
import CoreData

struct ToDo: View {
    @State var foodtextinput = ""
    @State var peopleinput = ""
    var onepeople:Int = 0
    var body: some View {
        
        VStack {
            VStack {
                HStack {
                    Text("請輸入餐費")
                        .foregroundColor(.brown)
                        .padding()
                    
                    TextField("", text: $foodtextinput)
                        .background(.blue)
                        .foregroundColor(.white)
                        .padding()
                    
                }
                HStack {
                    Text("請輸入人數")
                        .foregroundColor(.brown)
                        .padding()
                        
                    
                    
                    TextField("", text: $peopleinput)
                        .background(.blue)
                        .foregroundColor(.white)
                        .padding()

                    
                }
                HStack {
                    Text("每人餐費是:")
                    Text("元")
  
                }
                HStack {
                    Button("試算") {

                            
                        }
                    }
                    .frame(width: 100, height: 40, alignment: .center)
                .background(.yellow)
                    Button("重算") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .frame(width: 100, height: 40, alignment: .center)
                .background(.yellow)
                }
                

            }

        }
    
}

struct ToDO_Previews: PreviewProvider {
    static var previews: some View {
        ToDo()
    }
}
