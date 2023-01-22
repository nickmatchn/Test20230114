//
//  T2013011622.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/16.
//

import SwiftUI

struct T2013011622: View {
    var longerTrain:Bool
    var body: some View {
        HStack {
            Image(systemName:  "train.side.rear.car")
            if longerTrain {
                Image(systemName:  "train.side.middle.car")
                    .opacity(longerTrain ? 1:0)
            }
            Image(systemName: "train.side.front.car")
        }.font(.title)
            .frame(width: 100,height: 100)
    }
}

struct T2013011622_Previews: PreviewProvider {
    static var previews: some View {
        T2013011622(longerTrain: true)
        T2013011622(longerTrain: false)
    }
}
