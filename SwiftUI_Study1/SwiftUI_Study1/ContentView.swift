//
//  ContentView.swift
//  SwiftUI_Study1
//
//  Created by Kyus'lee on 2023/03/06.
//

import SwiftUI

// Stack
// H V Z
// HStack -> Horizontal Stack （横に並ぶStack）
// VStack -> Vertical Stack (縦に並ぶStack)
// ZStack -> 一番最後に書いたものが一番前に出る感じ
// Text("hello1")
// Text("hello2")
// Text("hello3")
// Text("hello4")
// だったら、hello4が一番前に表示される

struct ContentView: View {
    var body: some View {
        ZStack {
            // 一番後ろの背景の色を変更したいから、ZStackの序盤に書く
            Color.white
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }
                // paddingのdefaultは、4つの方向に全部paddingが入る感じ
                // そのため、paddingを入れたいところに、間隔の値も一緒に設定可能
                .padding(.bottom, 11)
                Text("Let's start to study SwiftUI!")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
                Text("practice everyWeek every every every week!")
                    .font(.largeTitle)
                    .underline()
                    .bold()
                    .foregroundColor(.white)
                // .lineLimit(1) -> 1行の文字列にする
                // UIKitとは違って、lineLimit(0)にしても...が出る
                // truncationMode(): textが長くなるとき、省略 ...を置く場所
                // .head: 最初の方
                // .middle: 真ん中の方
                // .tail: 最後の方を省略
                    .truncationMode(.head)
                    .lineSpacing(10)
                // lineSpacing: 各行ごとの間隔
                    //.frame(width: 100, height: 100)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
                // 🔥UIKitとは違ってcornerRadius(500)みたいに、限界値を超えた値を設定しても、円の形が崩れない!
                    // .padding()の後にbackgroundのcolorの設定をすると、paddingにも色が入る
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
