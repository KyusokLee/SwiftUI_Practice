//
//  AnimationPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct AnimationPractice: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 3.0
    
    var body: some View {
        
        // 1番 View
        VStack {
            Button {
                // default Animation: Apple基本内装のAnimation
                withAnimation(
                    .default
                    // .repeatCount(5)
                    // .repeatForever(): 無限Repeat
                    // .delay(): delayさせる
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
            // 回転効果も与えることができる
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            // OffsetでX軸、Y軸に移動させる
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
        
        // 2番 View: Speedに合わせるAnimation
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
            
            // linear Animation: 開始から終了時まで速度が一定である
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn Animation: 最初は遅いが、終了に近づくとき早くなる
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut Animation: 最初は速いが、終了に近づくとき遅くなる
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut Animation: 最初と最後が遅くなり、その間の部分が早くなる
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
        
        
        // 3番 View: Spring Animation
        VStack {
            Button {
                // response : 単一の振動を完了するまでかかる時間
                // dampingFraction: どれくらいの速さでSpringが停止するかに関する速度制御
                // 0だと、永遠に続き、止まらないことになる (0.5が自然だった)
                // blendDuration: 他のAnimation間の転換に関する長さの制御
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5, // 0 ~ 1.0
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimated ? 350: 50,
                    height: 100
                )
        }
    }
}

struct AnimationPractice_Previews: PreviewProvider {
    static var previews: some View {
        AnimationPractice()
    }
}
