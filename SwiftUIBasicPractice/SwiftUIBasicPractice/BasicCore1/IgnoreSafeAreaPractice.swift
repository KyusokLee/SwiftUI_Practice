//
//  IgnoreSafeAreaPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/18.
//

import SwiftUI

struct IgnoreSafeAreaPractice: View {
    var body: some View {
        // 1番のView
        ZStack {
            // background
            // .blueのような省略はできない
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.white).opacity(0.7)
                    .fontWeight(.semibold)
            }
        }
        
        // 2番のView
        ScrollView {
            VStack {
                Text("ボックス型リスト")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 7)
                    // paddingで左右、上下に余白を調整する
                        .padding()
                        .overlay(
                            Text("\(index) 番リスト")
                        )
                }
            }
        }
        .background(
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
        )
    }
}

struct IgnoreSafeAreaPractice_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaPractice()
    }
}
