//
//  ButtonPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/20.
//

import SwiftUI

struct ButtonPractice: View {
    // property
    @State var mainTitle: String = "まだ、ボタン押していない"
    
    var body: some View {
        VStack (spacing: 20) {
            // Reset Button
            Button  {
                self.mainTitle = "Reset"
            } label: {
                Text("Rest Button")
            }

            // Label
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 1番 ボタン
            // actionには、Buttonを押したときに実行するeventを入れる
            // labelはButtonの形をデザインする
            Button {
                // action
                self.mainTitle = "基本ボタンが押されました"
            } label: {
                // label
                Text("基本ボタン")
            }
            .accentColor(.red)
            
            Divider()
            
            // 2番　ボタン
            Button {
                self.mainTitle = "保存ボタンが押されました"
            } label: {
                Text("保存")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            // 3番　ボタン
            Button {
                self.mainTitle = "ハートボタンが押されました"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            // 4番　ボタン
            Button {
                self.mainTitle = "完了ボタンが押されました"
            } label: {
                Text("完了")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.5)
                    )
            }
        }
    }
}

struct ButtonPractice_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPractice()
    }
}
