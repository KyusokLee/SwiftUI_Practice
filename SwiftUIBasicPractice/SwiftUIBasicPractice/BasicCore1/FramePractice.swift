//
//  FramePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/07.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1つ目
            Text("Hello, SwiftUI!")
                .font(.title)
                .background(.green)
                .frame(width: 300, height: 200)
                .background(.red)
            Divider()
            
            //2つ目
            Text("Hello, SwiftUI!!!")
                .font(.title)
                .background(.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity , alignment: .center)
                .background(.red)
        }
        
        //3つ目
        VStack(spacing: 20) {
            Text("Hello, iOS!")
                .font(.title)
                .background(.red)
                .frame(height: 100, alignment: .top)
                .background(.orange)
                .frame(width: 200)
                .background(.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.pink)
                .frame(height: 400)
                .background(.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(.yellow)
        }
    }
}

struct FramePractice_Previews: PreviewProvider {
    static var previews: some View {
        FramePractice()
    }
}
