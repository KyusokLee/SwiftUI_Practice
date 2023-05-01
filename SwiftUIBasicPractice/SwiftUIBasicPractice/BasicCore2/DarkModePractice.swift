//
//  DarkModePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

// MARK: - Important for User's convenience for using App
struct DarkModePractice: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Primary and Secondary Colorは自動でダークモードの色に対応される(変換される)
                    Text("Primary Color")
                        .foregroundColor(.primary)
                    Text("Secondary Color")
                        .foregroundColor(.secondary)
                    // 一般的なblack, whiteは固定値
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Assetでadapticeという名前のColor Setを生成したあと、light, dark modeで色を設定することができる
                    Text("AssetでAdapticeColor設定")
                        .foregroundColor(Color("AdaptiveColor"))
                    // Environment Wrapperを使用したColorScheme
                    Text("Environmentを利用して、Adaptive 色設定")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                } // VStack
            } // Scroll
        } // Navigation
    }
}

struct DarkModePractice_Previews: PreviewProvider {
    static var previews: some View {
        DarkModePractice()
    }
}
