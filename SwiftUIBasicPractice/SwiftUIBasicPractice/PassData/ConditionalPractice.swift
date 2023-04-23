//
//  ConditionalPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct ConditionalPractice: View {
    // property
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            // Loading Button
            Button {
                isLoading.toggle()
            } label: {
                Text("ローディング中...: \(isLoading.description)")
            }
            
            // Loading Image
            if isLoading {
                ProgressView()
            }
            
            // 円型Button
            Button {
                showCircle.toggle()
            } label: {
                Text("円型 Button: \(showCircle.description)")
            }
            
            // 四角形Button
            Button {
                showRectangle.toggle()
            } label: {
                Text("四角形 Button: \(showRectangle.description)")
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            }

            Spacer()
            
        }
    }
}

struct ConditionalPractice_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalPractice()
    }
}
