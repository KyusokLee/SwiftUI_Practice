//
//  ContextMenuPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/28.
//

import SwiftUI

struct ContextMenuPractice: View {
    
    // property
    @State var statusText = ""
    @State var background = Color.cyan
    
    var body: some View {
        VStack(spacing: 30) {
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu")
                    .font(.headline)
                Text("このボタンを長押しすると、メニューが表示されます")
                    .font(.subheadline)
            } // VStack
            .foregroundColor(.white)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            // ContextMenu
            .contextMenu {
                Button {
                    statusText = "共有されました"
                    background = .yellow
                } label: {
                    // Labelは、TitleとIconの設定が可能
                    Label {
                        // Title
                        Text("Share post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "ご報告、ありがとうございます"
                    background = .red.opacity(0.7)
                } label: {
                    // Labelは、TitleとIconの設定が可能
                    Label {
                        // Title
                        Text("Report post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
                
                Button {
                    statusText = "いいね！ 追加"
                    background = .green
                } label: {
                    // Labelは、TitleとIconの設定が可能
                    Label {
                        // Title
                        Text("Like post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }
                }


            }
        } // VStack
        .padding()
        
    }
}

struct ContextMenuPractice_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuPractice()
    }
}
