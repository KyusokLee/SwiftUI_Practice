//
//  PaddingPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/08.
//

import SwiftUI

struct PaddingPractice: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 1. padding基礎
            Text("Hello, SwiftUI!!")
                .background(.yellow)
                .padding()
                // .padding(.all, 15)と同じ Default Value
            // CSSのpaddingと似ている
                .padding(.leading, 20)
                .background(.blue)
            // CSSのmarginと似ている
                .padding(.bottom, 20)
            // 注意点: backgroundの前にpadding処理をするか、後でするかによって、処理をするUIの基準が違う
            Divider()
            
            // 2. paddingの応用
            Text("Hello!!! SwiftUI!!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("hello! みなさん、Hello Worldへようこそ！ hello! みなさん、Hello Worldへようこそ！ hello! みなさん、Hello Worldへようこそ！ hello! みなさん、Hello Worldへようこそ！ hello! みなさん、Hello Worldへようこそ！")
        }
        // VStackの範囲外でpadding設定
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 10,
                    y: 10
                )
        )
        .padding()
    }
}

struct PaddingPractice_Previews: PreviewProvider {
    static var previews: some View {
        PaddingPractice()
    }
}
