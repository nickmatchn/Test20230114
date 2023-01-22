//
//  Test2023012002.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/20.
//

import SwiftUI

struct Test2023012002: View {
    var body: some View {
        TabView {
            TabAView()
                .tabItem {
                    Image(systemName: "person")
                        .resizable()
                        .font(.largeTitle)
                    List{
                        Text("1111")
                        Text("1111")
                        Text("1111")
                    }
                   
                }
            TabBView()
                .tabItem {
                    Image(systemName: "pencil.circle")
                    Text("TabB")
                }
        }
    }
}

struct Test2023012002_Previews: PreviewProvider {
    static var previews: some View {
        Test2023012002()
    }
}



struct TabAView: View {
    var body: some View {
        Text("TabA")
    }
}
struct TabBView: View {
    var body: some View {
        Text("TabB")
    }
}
