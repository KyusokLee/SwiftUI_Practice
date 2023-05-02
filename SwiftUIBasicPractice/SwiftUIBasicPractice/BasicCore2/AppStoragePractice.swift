//
//  AppStoragePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/02.
//

import SwiftUI

struct AppStoragePractice: View {
    
    // property
    // 一般的なデータ
    @State var generalName: String?
    
    // App Storageを使うと、Appを開き直したとき、自動でKeyからnameを読み込む
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            // 一般的な State
            VStack(spacing: 10) {
                Text("@State で保存")
                    .font(.headline)
                
                Text(generalName ?? "君の名は？")
                
                Button {
                    generalName = "Kyulee"
                } label: {
                    Text("名前を取得")
                }

                
            } // VStack
            .padding()
            .border(.green)
            
            // @AppStorage　使用
            VStack(spacing: 10) {
                Text("@AppStorage で保存")
                    .font(.headline)
                
                Text(appStorageName ?? "君の名は？")
                
                Button {
                    appStorageName = "Kyulee"
                } label: {
                    Text("名前を取得")
                }
            } // VStack
            .padding()
            .border(.red)
            
            
        } // VStack
    }
}

struct AppStoragePractice_Previews: PreviewProvider {
    static var previews: some View {
        AppStoragePractice()
    }
}
