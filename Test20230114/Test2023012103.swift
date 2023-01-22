//
//  Test2023012103.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/21.
//

import SwiftUI

struct Test2023012103: View {
    @State var randomNumber = 1
    @State var randomNumber1 = 4
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image(systemName: "die.face.\(randomNumber)")
                    .resizable()
                    .scaledToFit() //画像の縦横の比率を固定する
                .frame(width: UIScreen.main.bounds.width/3)
                Image(systemName: "die.face.\(randomNumber1)")
                    .resizable()
                    .scaledToFit() //画像の縦横の比率を固定する
                .frame(width: UIScreen.main.bounds.width/3)
            }//画面の幅が取得できます。それを/2しているので、画面の半分の大きさに指定する
                Spacer()
            Button(action: {
                print("ボタンを押されたよ")
                randomNumber = Int.random(in: 1...6)
                randomNumber1 = Int.random(in: 1...6)
            }, label: {
                Text("サイコロを振る")
            })
            .padding()
            .background(.red)
            .foregroundColor(.black)
            .font(.largeTitle)
            .cornerRadius(10)
            Spacer()
        }
        
    }
}

struct Test2023012103_Previews: PreviewProvider {
    static var previews: some View {
        Test2023012103()
    }
}
