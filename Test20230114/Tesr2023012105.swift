//
//  Tesr2023012105.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/21.
//

import SwiftUI


struct Tesr2023012105: View {
    @State private var isLoading = false
    var body: some View {
        VStack {
            List{
                ForEach(1...4, id: \.self) { index in
                    Text("Item(index)")
                }
            }
            ZStack {
                Text("Loading")
                    .font(.system(.body,design: .rounded))
                    .bold()
                    .offset(x:0,y:-25)
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color(.systemGray5),lineWidth: 3)
                    .frame(width: 250,height: 3)
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.green,lineWidth: 3)
                    .frame(width: 30,height: 3)
                    .offset(x:isLoading ? 110: -110,y:0)
                    .animation(.linear(duration: 1).repeatForever(autoreverses:false),value: isLoading)

            }.onAppear(){
                self.isLoading = true
        }
        }
    }
}

struct Tesr2023012105_Previews: PreviewProvider {
    static var previews: some View {
        Tesr2023012105()
    }
}
