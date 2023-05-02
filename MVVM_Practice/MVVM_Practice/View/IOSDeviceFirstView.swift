//
//  IOSDeviceFirstView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import SwiftUI

struct IOSDeviceFirstView: View {
    
    // 初めてViewModelを初期化するときは、 @StateObjectで読み込む
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iosDeviceArray) { item in
                    NavigationLink {
                        // destination
                        IOSDeviceSecondView(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                            .font(.subheadline)
                            
                    } // Link
                }
            } // List
        } // Navigation
        // ThirdViewへアクセスすると、Preview Crashedになる
        // 理由: environmentObjectとしてどのModelを採択したか、PreviewProviderはわからないので、指定をする必要がある
        // これから、navigationViewの下位Viewに viewModelを全部参照できるようにするってこと
        .environmentObject(viewModel)
    }
}

struct IOSDeviceFirstView_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceFirstView()
    }
}
