//
//  IOSDeviceSecondView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import SwiftUI

struct IOSDeviceSecondView: View {
    
    private let baseColor = Color.orange.opacity(0.9)
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            baseColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("あなたが選んだデバイスは？")
                    .font(.title2)
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(baseColor)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                
                NavigationLink {
                    IOSDeviceThirdView()
                } label: {
                    Text("次のページへ移動 ->")
                        .font(.headline)
                        .foregroundColor(baseColor)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(20)
                }

                
                
            } // VStack
        } // ZStack
    }
}

struct IOSDeviceSecondView_Previews: PreviewProvider {
    static var previews: some View {
        IOSDeviceSecondView(selectedItem: "iPhone")
    }
}
