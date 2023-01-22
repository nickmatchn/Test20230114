//
//  Tesr2023012104.swift
//  Test20230114
//
//  Created by 森川柏旭 on 2023/01/21.
//

import SwiftUI

struct TaskDataIdentifiable {
    var title :String
    var completed:Bool
    var id = UUID()
}
struct Tesr2023012104: View {
    @State var taskData = [TaskDataIdentifiable(title: "買菜", completed: false),TaskDataIdentifiable(title: "掃地", completed: false),TaskDataIdentifiable(title: "看書", completed: false)
    ]
    
    var body: some View {
        NavigationStack{
            List(0..<taskData.count, id:\.self){ index in
                Button(action: {
                    taskData[index].completed.toggle()
                }, label: {
                    HStack{
                        Image(systemName: taskData[index].completed ? "checkmart.circle.fill":"circle")
                        Text(taskData[index].title)
                    }
                }).foregroundColor(.primary)
            }.navigationTitle("TO DO LIST")
        }
    }
}

struct Tesr2023012104_Previews: PreviewProvider {
    static var previews: some View {
        Tesr2023012104()
    }
}
