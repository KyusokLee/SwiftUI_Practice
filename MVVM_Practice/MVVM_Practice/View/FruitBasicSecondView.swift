//
//  FruitBasicSecondView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import SwiftUI

// Second screen
struct FruitBasicSecondView: View {
    // property
    @ObservedObject var fruitViewModel = FruitViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            // background
            Color.green.opacity(0.6)
                .ignoresSafeArea()
            
            // foreground
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                } // Loop
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("戻る")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
            } // VStack
        } // ZStack
    }
}

struct FruitBasicSecondView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicSecondView()
    }
}
