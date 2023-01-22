//
//  T2012011611.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI

struct T2012011611: View {
    @State private var isFlagged:Bool = false
    var body: some View {
        ScrollView {
            VStack {
                Text("Hamlet").font(.largeTitle).foregroundColor(.purple) + Text("iii").font(.title).foregroundColor(.red)
                    
                Image("11455")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                
                    .frame(width: 300,height: 300)
                HStack{
                    Rectangle()
                        .foregroundColor(.blue)
                    Circle()
                        .foregroundColor(.orange)
                    RoundedRectangle(cornerRadius: 15,style: .continuous)
                        .foregroundColor(.green)
                }
                .frame(width: 300,height: 300)

                HStack{
                    Image(systemName:  "folder.badge.plus")
                    Image(systemName: "heart.circle.fill")
                    Image(systemName:  "alarm")
                }
                Label("Favorite BOoks",systemImage: "books.vertical")
                    .labelStyle(.titleAndIcon)
                    .font(.largeTitle)
                .symbolRenderingMode(.multicolor)
                .font(.title)
                Toggle(isOn: $isFlagged){
                    Label("Flag", systemImage:  isFlagged ? "flag.fill" : "person")
                        .font(.system(size: 40))
                        .padding()

                }.toggleStyle(.button)
                Toggle(isOn: $isFlagged){
                    Label("Flag", systemImage:  isFlagged ? "flag.fill" : "person")
                        .font(.system(size: 40))
                        .padding()

                }.toggleStyle(.automatic)
            }
        }
        
    }
}

struct T2012011611_Previews: PreviewProvider {
    static var previews: some View {
        T2012011611()
    }
}
