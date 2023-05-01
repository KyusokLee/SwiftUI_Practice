//
//  SliderPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct SliderPractice: View {

    @State var sliderValue: Double = 3
    @State var color = Color.blue
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Level: ")
                // 少数点以下3まで使いたいので、以下のように設定
                Text(String(format: "%.3f", sliderValue))
            } // HStack
            .foregroundColor(color)
            // value: 常にfloat(Double) IntじゃなくFloatタイプに設定
            // in: Sliderの範囲設定
            // step: 段階設定 Sliderがどんな単位で増減が行われるのか (Sliderの刻み)
            // onEditingChanged: Slider Valueが変更されるときに処理されるイベント
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.001,
                onEditingChanged: { _ in
                    color = .red
                },
                // min, maxのLabelの設定
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Label:")
                }
            )
            .tint(.green)
            .padding()
            
        } // VStack
    }
}

struct SliderPractice_Previews: PreviewProvider {
    static var previews: some View {
        SliderPractice()
    }
}
