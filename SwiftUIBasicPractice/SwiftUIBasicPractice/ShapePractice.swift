//
//  ShapePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/06.
//

import SwiftUI

struct ShapePractice: View {
    // グラデーションの定義
    let gradient = LinearGradient(gradient: Gradient(colors: [.yellow.opacity(0.4), .yellow, .orange.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        VStack(spacing: 20) {
            // 円を描画する
            Text("円型")
                .font(.title)
            Circle()
            // .fill(.blue.opacity(0.3))
            // fillと同じ .foregroundColor(.blue)
            // Stroke styleじゃない方
               // .stroke(Color.blue, lineWidth: 3)
            // Stroke styleを導入する方法
            // lineCap: 形を指定
            // dash: 設定した数値のpixelほど、spacingされる
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [30]))
                .frame(width: 250, height: 150)
                .padding()
            // 楕円形
            Text("楕円形")
                .font(.title)
            Ellipse()
                .fill(.green)
                .frame(width: 250, height: 150)
            
            // カプセル形
            Text("カプセル")
                .font(.title)
            Capsule(style: .circular)
                .stroke(.blue, lineWidth: 30)
                .frame(width: 250, height: 150)
        }
        
        VStack(spacing: 20) {
            // 長方形
            Text("長方形")
                .font(.title)
            Rectangle()
                .fill(gradient)
            // このままだと、borderの角の部分は丸くならない
                .border(.orange, width: 1)
                .frame(width: 250, height: 150)
                .cornerRadius(8)
            
            // 角丸四角形
            Text("角丸四角形")
                .font(.title)
            // initializerでCorderRadiusの設定が可能
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0.3, to: 1.0)
                .fill(Color.orange)
            // overlayをすることで、線も丸くなる
            // UIKitのmasksToBoundsをtrueにする感じかな..!
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.red, lineWidth: 2)
                )
                .frame(width: 250, height: 150)
        }
    }
}

struct ShapePractice_Previews: PreviewProvider {
    static var previews: some View {
        ShapePractice()
    }
}
