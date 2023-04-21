//
//  BackgroundOverlayPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/08.
//

import SwiftUI

struct BackgroundOverlayPractice: View {
    // background: 対象のObjectの後ろ
    // overlay: 対象のObjectの表側
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, SwiftUI!")
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.red, .blue]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(.teal)
                )
            Divider()
            
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 120, height: 120)
                )
            
            Divider()
            
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 230, height: 230)
                )
                .padding()
            Divider()
            
            // 同じObjectに複数のUIを描画するのに活用性が高いコード
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.cyan, .blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 100, height: 100)
                    // Shadowの導入
                        .shadow(color: .blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("3")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: .red, radius: 10, x: 2, y: 2)
                            // alignmentで位置を5時方向にする
                            , alignment: .bottomTrailing
                        )
                )
                .padding()
        }
    }
}

struct BackgroundOverlayPractice_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlayPractice()
    }
}
