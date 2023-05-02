//
//  IOSDeviceThirdView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import SwiftUI

struct IOSDeviceThirdView: View {
    
    // いちいち、毎回Modelを渡して処理させるより、もっと効率的である
    // @StateObject で宣言した、ViewModelを @EnvironmentObject を通して、持ってくる
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iosDeviceArray) { item in
                        Text(item.name)
                    } // Loop
                } // VStack
                .foregroundColor(.white)
                .font(.largeTitle)
            } // Scroll
            
        } // ZStack
    }
}

struct IOSDeviceThirdView_Previews: PreviewProvider {
    static var previews: some View {
        // PreviewProviderは、EnvironmentObjectとしてどのModelを採択したかわからない
        // そのため、ここで .environmentObjectの指定をして、PreviewにどのModelを採択したかしらせる必要がある
        // 根本的な理由: Previewはあくまで、ビルドの前の段階で、表示させるので、ViewModelを正確にわかるすべがない
        IOSDeviceThirdView()
            .environmentObject(IOSDeviceViewModel())
    }
}
