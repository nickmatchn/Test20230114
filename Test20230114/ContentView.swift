//
//  ContentView.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    @State private var isON:Bool = false
    @State private var text1:String = "1111"
    @State private var isOpen = false
    var body: some View {
        ScrollView {
            VStack{
                T20130116333()
                Button(action: {
                    isON.toggle()
                }, label: {
                    Text("HII")
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(25)

                })
                Text(isON ? text1 : "333" )
                Capsule(style: .circular)
                    .fill(.blue)
                    .frame(width:100,height: 50)
                Capsule(style: .continuous)
                    .frame(width: 100,height: 50)
                Circle()
                    .frame(width: 50,height: 25)
                Rectangle()
                    .frame(width: 50,height: 50)
                RoundedRectangle(cornerRadius: 12)
                    .frame(width:50,height: 50)
                Image("logo")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .clipShape(Circle())
                    .border(.red,width: 5)
                Test20230121()
    //        ZStack {
    //            RadialGradient(colors:[ .black,.mint,.purple,.blue],center: .center, startRadius: 50, endRadius: 100)
    //                .ignoresSafeArea()
    //            Text("HELLO")
    //                .foregroundColor(.white)
    //                .font(.title)
    //                .frame(width: 100,height:30)
    //            VStack {
    //                Image(systemName: "arrow.down")
    //                    .rotationEffect(.init(degrees:  isOpen ? 0: 180))
    //                Button{
    //                    withAnimation{
    //                        isOpen.toggle()
    //                    }
    //                }label: {
    //                    Text(isOpen ? "Toggle Arrow" : "Toggle")
    //                }
    //            }
            }
        }
    }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
