//
//  T202301191.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/19.
//

import SwiftUI

struct T202301191: View {
    @State var foodTextInput = ""
    @State var peopleInput = ""
    var onepieple: Int = 0
    @State private var usesFixedSize = false
    
    var body: some View {
        VStack {
            Button(action: {
                usesFixedSize.toggle()
            }, label: {Text("按鈕")})
            
            HStack {
                Text(usesFixedSize ? "" : "按下")
                Toggle("動畫", isOn:$usesFixedSize.animation(.easeOut))
                Text("請輸入餐費")
                    .foregroundColor(.purple)
                    .padding()
                TextField("",text: $foodTextInput)
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding()
            }
            HStack{
                Text("請輸入人數")
                    .foregroundColor(.brown)
                    .padding()
                TextField("",text: $peopleInput)
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding()
            }
            HStack{
                Image(systemName: "person")
                    .resizable()
                    .fixedSize()
                    .frame(width: 100,height: 100)
                Text("每人餐費是:")
                Text("元")
            }
        }
    }
}

struct T202301191_Previews: PreviewProvider {
    static var previews: some View {
        T202301191()
    }
}
