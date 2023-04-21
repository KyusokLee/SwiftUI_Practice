//
//  ForEachPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/16.
//

import SwiftUI

struct ForEachPractice: View {
    // 変数生成
    var data: [String] = ["Hi", "Hello", "Hey everyone", "Love SwiftUI"]

    var body: some View {
        // 1
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                    
                    Text("index　番号: \(index)番")
                }
            }
            
            Divider()
            
            // 2
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
        
    }
}

struct ForEachPractice_Previews: PreviewProvider {
    static var previews: some View {
        ForEachPractice()
    }
}
