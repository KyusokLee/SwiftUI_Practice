//
//  ScrollViewPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/08.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        // Vertical Scroll
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue.opacity(0.5))
                        .frame(height: 300)
                    // overlayは一つずつ
                        .overlay(
                            Text("Index: \(index)")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        )
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue.opacity(0.7), lineWidth: 3)
                        )
                }
            }
            .padding()
        }
        
        // Horizontal Scroll
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue.opacity(0.5))
                        .frame(width: 300, height: 300)
                    // overlayは一つずつ
                        .overlay(
                            Text("Index: \(index)")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        )
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue.opacity(0.7), lineWidth: 3)
                        )
                }
            }
            .padding()
        }
        
        // Vertical and Horizontalの組み合わせ
        // LazyStackに関しては、今後また別途のfileで練習する予定
        // ShowIndicatorのdefault: trueであるため、省略可能
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.blue.opacity(0.3))
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
    }
}

struct ScrollViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPractice()
    }
}
