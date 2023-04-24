//
//  SecondNavigationView.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/25.
//

import SwiftUI

struct SecondNavigationView: View {
    
    // property
    // presentationModeもdeprecatedされる！
    // 代わりに -> isPresentedにする
//    @Environment(\.isPresented) var isPresented
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            // background
            Color.green
                .ignoresSafeArea()
                
            VStack(spacing: 20) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("以前のページに移動")
                        .foregroundColor(.green)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink {
                    // destination
                    ZStack {
                        Color.red
                            .ignoresSafeArea()
                        Text("3番目のページです!")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3番目のページに移動")
                        .foregroundColor(.green)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                }

                
            }
            
        }
    }
}

struct SecondNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SecondNavigationView()
        }
    }
}
