//
//  TabViewPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

// MARK: - Important Core!
struct TabViewPractice: View {
    
    @State var initPageNumber: Int = 0
    
    var body: some View {
        // selection: TabViewが現在どこのページを指しているのかを設定するところ
        TabView(selection: $initPageNumber) {
            HomeView(selectedTab: $initPageNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("ブラウズ")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("プロフィール")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red.opacity(0.6))
    }
}

struct TabViewPractice_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPractice()
    }
}

// MARK: - HomeView
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            // background
            Color.red.opacity(0.6).edgesIgnoringSafeArea(.top)
            
            // foreground
            VStack(spacing: 20) {
                Text("ホーム画面")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("プロフィール画面へ移動")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }

                
            } // VStack
        } // ZStack
    }
}
