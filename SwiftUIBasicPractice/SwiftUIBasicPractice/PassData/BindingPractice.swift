//
//  BindingPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct BindingPractice: View {
    // State: property wrapperの1つ
    // 状態の表す属性変数を意味
    @State var backgroundColor: Color = Color.blue.opacity(0.3)
    @State var title: String = "Binding Practice View"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameterとして＠Stateの値に$をつける
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
    
//    var contentLayer: some View {
//
//    }
}

struct BindingPractice_Previews: PreviewProvider {
    static var previews: some View {
        BindingPractice()
    }
}
