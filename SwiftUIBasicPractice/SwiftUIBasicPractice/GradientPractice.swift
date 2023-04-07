//
//  GradientPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/07.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
        VStack(spacing: 20) {
            // 線形Gradient
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
                .frame(width: 300, height: 200)
            
            // 円型Gradient
            // 丸く広がるGradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.yellow, .purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300
                    )
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient
            // 特定の角度に値を付与して、gradientの設定が可能
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.blue, .green]),
                        center: .topLeading,
                        angle: .degrees(50)
                    )
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GradientPractice_Previews: PreviewProvider {
    static var previews: some View {
        GradientPractice()
    }
}
