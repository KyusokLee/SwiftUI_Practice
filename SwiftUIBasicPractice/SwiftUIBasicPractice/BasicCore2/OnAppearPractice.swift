//
//  OnAppearPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct OnAppearPractice: View {
    
    @State var noticeText = "onAppear の前"
    @State var count = 0
    let boxHeight: CGFloat = 200
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(noticeText)
                // 画面が表示されてからLoadが行われるようにする LazyStackを使用
                LazyVStack {
                    // 50個の四角形ボックスを生成
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: boxHeight)
                            .padding()
                        // onAppear: 新しく画面が生成されるたびに count を1ずつ増やす
                            .onAppear {
                                count += 1
                            }
                        
                    } // Loop
                } // LazyVStack
            } // Scroll
            // .onAppear: ここで、onAppearBasic Viewが画面に表示されるとき、処理されるlogic
            .onAppear {
                // dispatchQueueを使用して、main thread に2秒のdelayの後 Eventが実行されるように
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    noticeText = "onAppear　スタート完了しました！"
                }
            }
            
            .navigationTitle("生成されたボックス: \(count)")
        } // Navigation
    }
}

struct OnAppearPractice_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearPractice()
    }
}
