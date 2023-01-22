//
//  TT20230116.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI

struct TT20230116: View {
    var body: some View {
//        ScrollView(showsIndicators: false){
//            ForEach(1..<100) { index in
//                Text("I9999II \(index)")
//            }.padding(.all).frame(maxWidth: .infinity)
//        }
        VStack {
            List{  //全部可自由移動
                VStack{
                    ForEach(1..<100) { index in
                        Text("橫的🚩 \(index)")
                            .frame(width: 300,height: 60)
                            .foregroundColor(.white)
                            .background(.blue)
                            .font(.title)
                    }
                }
            }
            ScrollView([.horizontal, .vertical]){  //全部可自由移動
                HStack{
                    ForEach(1..<100) { index in
                        Text("橫的 \(index)")
                            .frame(width: 60,height: 60)
                            .foregroundColor(.white)
                            .background(.blue)
                            .font(.title)
                    }
                }
            }
        }
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TT20230116_Previews: PreviewProvider {
    static var previews: some View {
        TT20230116()
    }
}
