//
//  T202301161.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI

struct T202301161: View {
    @State private var isLoading:Bool = false
    var body: some View {
        Button {
            isLoading.toggle()
        }label: {
            Text("\(isLoading ? "Stop":"Statr")Loading")

            
        }
    }
}

struct T202301161_Previews: PreviewProvider {
    static var previews: some View {
        T202301161()
    }
}
