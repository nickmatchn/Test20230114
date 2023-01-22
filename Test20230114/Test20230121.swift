//
//  Test20230121.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/21.
//
//消費稅計算
import SwiftUI

struct Test20230121: View {
    @State private var inputText = ""
    @State var tax8 = 0.0
    @State var tax10 = 0.0
    var body: some View {
        VStack (spacing: 20){
            Text("消費税計算")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(25)
            Text("消費稅 8% : \(tax8,specifier: "%.2f")")
            Text("消費稅 10% \(tax10,specifier: "%.2f")")
            TextField("請輸入文字", text: $inputText)
                .foregroundColor(.red)
                .padding()
                .keyboardType(.numberPad)
                .background(.yellow)
                
                .cornerRadius(25)
                
            
            Text("入力價格:\(inputText)")
                
            Button(action: {
                tax8 = (Double(inputText) ?? 0) * 1.08
                tax10 = (Double(inputText) ?? 0) * 1.1
            }, label: {
                Text("計算")
            })
        }
        .font(.title)
        .padding()
    }
}

struct Test20230121_Previews: PreviewProvider {
    static var previews: some View {
        Test20230121()
    }
}
