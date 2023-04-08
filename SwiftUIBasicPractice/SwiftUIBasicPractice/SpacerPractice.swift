//
//  SpacerPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/08.
//

import SwiftUI

struct SpacerPractice: View {
    var body: some View {
        // 1. Spacerの例 図形
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.blue)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.green)
        }
        .background(.gray.opacity(0.3))
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
            }
            .font(.title)
            // 左右にpaddingを設定
            .padding(.horizontal)
            
            Spacer()
        }
        
        HStack {
            Text("Yellow!")
                .font(.system(size: 30))
                .background(.yellow)
            
            // space3回打った程度の間隔を起きたいのに、Textが両端にくっついてるようになった...
            // 理由: Spacerは基本的に使用可能な全体空間に間隔を置く
            Spacer()
            
            Text("Blue!")
                .font(.system(size: 30))
                .background(.blue)
        }
        
        // Spacerの理解
        HStack {
            Text("Yellow!")
                .font(.system(size: 30))
                .background(.yellow)
            
            Spacer()
            
            Text("Blue!")
                .font(.system(size: 30))
                .background(.blue)
            
            Spacer()
        }
        
        // minLengthを用いて、Spacerが持つ空白の最小限のサイズを保障する
        // UIKitのconstraintsのless than, greater thanと似ている認識
        HStack {
            Text("Yellow!YellowYellowYellow")
                .font(.system(size: 30))
                .background(.yellow)
            
            // どう考えてもSpaceのサイズが100にはなってない..
            // しかし、長いTextを記入しておくと、spaceの最小限のサイズが保障されることがわかる
            Spacer(minLength: 100)
            
            Text("Blue!BlueBlueBlue")
                .font(.system(size: 30))
                .background(.blue)
        }
    }
}

struct SpacerPractice_Previews: PreviewProvider {
    static var previews: some View {
        SpacerPractice()
    }
}
