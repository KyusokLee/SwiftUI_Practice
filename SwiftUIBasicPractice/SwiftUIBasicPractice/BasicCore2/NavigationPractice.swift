//
//  NavigationPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/25.
//

import SwiftUI

struct NavigationPractice: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination 指定
                    SecondNavigationView()
                } label: {
                    Text("Second Navigationへ移動")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
            // navigationTitle
            .navigationTitle("Page Title")
            // automatic: 自動にstyleを変換
            // inline: navigationBarの中央に入る
            // large: UIKitでのpreferLargeTitleと同様
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false)
            // navigationBarHiddenはDeprecated予定
            // 代わりにAppleは、toolbar(.hidden)を使うことを奨励している
            // -> .toolbar(.hidden)
            
            // navigationBarItemはUIKitと同様
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
            // navigationBarItemsもDeprecated予定
            // 代わりにAppleは、ToolbarItemを使うことを奨励している
            // ToolbarItemはiOS14以降が可能
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button {
//                        print("sss")
//                    } label: {
//                        Text("Leading")
//                    }
//
//                }
//            }
            .sheet(isPresented: $showSheet) {
                ZStack {
                    // background
                    Color.green
                        .ignoresSafeArea()
                    
                    // content
                    Text("設定のPageです!")
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct NavigationPractice_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPractice()
    }
}
