//
//  Test20230120.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/20.
//

import SwiftUI

struct Test20230120: View {
    @Binding var isLoading: Bool
    @State var textInput:String = "111"
    @State private var isBool:Bool = false
    var body: some View {
        TabView {
            
            ScrollView {
                VStack {
                    TextField("請輸入", text:$textInput)
                    Button{
                        isLoading.toggle()
                        isBool.toggle()
                        
                    } label:{
                        Text("\(isLoading ? "Stop" : "Start")Loading")
                    }.padding()
                        .font(.largeTitle)
                        .foregroundColor(isBool ? .white : .blue)
                        .background(isBool ? .red:.yellow)
                        .cornerRadius(25)
                    Text(isBool ? "HELLO" : "HI").animation(.easeOut)
                        .padding()
                        .font(.largeTitle)
                        .foregroundColor(isBool ? .white : .blue)
                        .background(isBool ? .red:.yellow)
                        .cornerRadius(25)
                    
                }
            }
        }.tableStyle(.automatic)
        
    }
}

struct Test20230120_Previews: PreviewProvider {
    static var previews: some View {
        Test20230120(isLoading: .constant(false))
        
    }
}
