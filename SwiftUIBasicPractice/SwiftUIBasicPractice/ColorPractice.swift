//
//  ColorPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/07.
//

import SwiftUI

// Dark Mode Colorの設定も可能に
struct ColorPractice: View {
    var body: some View {
        VStack(spacing: 20) {
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.purple)
                .frame(width: 300, height: 100)
            
            // Primary Color
            // 自動でDark Mode時のColor支援
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(.primary)
                .frame(width: 300, height: 100)
            
            // UIColor
            // UIKitで使うColorを使用できる
            Text("UIColor")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
            
            // Custom Color
            // Hex Colorを反映
            Text("Custom Hex Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300, height: 100)
        }
    }
}

struct ColorPractice_Previews: PreviewProvider {
    static var previews: some View {
        // Dark Mode $ Light ModeをPreviewで確認
        ColorPractice()
            //.preferredColorScheme(.dark)
    }
}
