//
//  StackPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/08.
//

import SwiftUI

struct StackPractice: View {
    var body: some View {
        // VStack (Vertical)
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        // HStack (Horizontal)
        HStack(spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        // ZStack (Z軸のLayerのStack)
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(.green)
                .frame(width: 130, height: 130)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
        }
        
        // Stackの応用
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 20) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50)
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.pink)
                        .frame(width: 75, height: 75)
                    
                    Circle()
                        .fill(.teal)
                        .frame(width: 25, height: 25)
                }
                .background(.white)
            }
            .background(.orange)
        }
        
        // ZStack vs Background
        VStack(spacing: 50) {
            // ZStackを用いて、円に1を表現
            // Layerが複雑なときZStackの効率がいい
            // ZStackを使う方が、今後のコード改善やUIの追加のときにもっと効率的でわかりやすい
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Backgroundを用いて、円に1を同様に表現
            // Layerが単純なときに使うのがいい
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StackPractice_Previews: PreviewProvider {
    static var previews: some View {
        StackPractice()
    }
}
