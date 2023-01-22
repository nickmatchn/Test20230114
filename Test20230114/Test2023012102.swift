//
//  Test2023012102.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/21.
//
//VStack,HStack ,ZStack
import SwiftUI

struct Test2023012102: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("HStack")
                Text("HStack")
                Text("HStack")
            }
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .background(.purple)
            Spacer()
            VStack {
                Text("VStack")
                Text("VStack")
                Text("VStack")
            }.padding().foregroundColor(.white).font(.title).background(.red)
            Spacer()
            ZStack {
                Text("ZStack1")
                    .frame(width: 100,height: 100)
                Text("ZStack2")
                    .frame(width: 80,height: 80)
                Text("ZStack")
            }
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .background(.orange)
            Spacer()
        }

    }
}

struct Test2023012102_Previews: PreviewProvider {
    static var previews: some View {
        Test2023012102()
    }
}
