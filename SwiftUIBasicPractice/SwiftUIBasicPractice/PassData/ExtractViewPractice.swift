//
//  ExtractViewPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/22.
//

import SwiftUI

struct ExtractViewPractice: View {
    // property
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
            // headerLayerなどもここで設定し、コードの可読性を考える
        }
    }
    
    // Content
    var contentLayer: some View {
        VStack {
            Text("Extract View Practice")
                .font(.largeTitle)
            
            Button {
                // action
                buttonPressed()
            } label: {
                // label
                Text("背景色を変更")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    // Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractViewPractice()
    }
}
