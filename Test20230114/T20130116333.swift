//
//  T20130116333.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI
struct T20130116333: View {
    let food = ["漢堡","麵","炒飯"]
    @State private var selectedFood: String?
    var body: some View {
        VStack {
            Image("11455")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350,height: 350)
            Text("今天吃什麼")
                .font(.largeTitle)
                .bold()
            Text(selectedFood ?? "還沒設定")
                .padding()
                   .background(Color.purple)
                   .foregroundColor(.white)
                   .font(.title)
                   .cornerRadius(25)
            Button(action: {
                selectedFood = food.shuffled().filter {$0 != selectedFood}.first
            }, label: {
                Text(selectedFood == .none ? "告訢我":"換一個").frame(width: 200)
            })  .padding()
                .background(Color.yellow)
                .cornerRadius(25)
            Button(action: {
                selectedFood = .none
            }, label: {
                Text("重來").frame(width: 200)
            })
            .padding()
            .background(Color.yellow)
            .cornerRadius(25)
        }.font(.title)
    }
}
struct T20130116333_Previews: PreviewProvider {
    static var previews: some View {
        T20130116333()
    }
}
