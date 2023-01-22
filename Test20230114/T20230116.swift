//
//  T20230116.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI

struct T20230116: View {
    @Binding var isLoading:Bool = false
    var body: some View {
        isLoading {
            ProgressView()
        }else{
            Text("Finished loading")
        }
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct T20230116_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            T20230116(isLoading: .constant(true))
            T20230116(isLoading: .constant(false))
        }
    }
}
