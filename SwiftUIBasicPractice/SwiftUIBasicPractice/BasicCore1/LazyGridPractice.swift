//
//  LazyGridPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/17.
//

import SwiftUI

struct LazyGridPractice: View {
    // LazyVGrid
    // columnsの個数を3個に設定
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    // LazyHGrid
    // title を1000個変数を生成
    // ["Item 1", "Item 2", .... "Item 1000"] [Sting]
    let title: [String] = Array(1...1000).map {"Item \($0)"}
    
    // 画面をGrid形式に形成する
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        // 1 - LazyVGrid
        ScrollView {
            
            // Hero パート (上の写真の部分)
            Rectangle()
                .fill(.blue.opacity(0.3))
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    // Section 1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 番")
                                )
                        }
                    } //: Section 1
                    
                    // Section 2
                    Section(header: Text("Section2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 番")
                                )
                        }
                    } //: Section 2
                }
        } // :1番
        
        // LazyHGrid
        // ScrollView horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item  in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

struct LazyGridPractice_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridPractice()
    }
}
