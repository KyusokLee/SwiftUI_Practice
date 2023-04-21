//
//  InitEnumPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/16.
//

import SwiftUI

struct InitEnumPractice: View {
    // 変数宣言
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 生成
    enum Fruit {
        case apple
        case orange
    }
    
    // initializer 定義
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "りんご"
            self.backgroundColor = .red
        } else {
            self.title = "オレンジ"
            self.backgroundColor = .orange
        }
    }
    
    // View
    var body: some View {
        VStack (spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitEnumPractice_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitEnumPractice(count: 100, fruit: .apple)
            InitEnumPractice(count: 46, fruit: .orange)
        }
    }
}
