//
//  FruitBasicView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct FruitBasicView: View {
    
    // property
    // @ObservedObject　を使用して、ViewModelをオブジェクト化する -> 主にSubViewで使用 (親Viewの値を受け取った場合)
//     @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject を使用して、オブジェクト化する -> Viewが初めて生成されるとき、初期化するとき使用! そのため、主に親Viewで使用
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red.opacity(0.75))
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        } // HStack
                    } // Loop
                } // Condition
            } // List
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: FruitBasicSecondView(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                        }
                    )
            )
            .navigationTitle("果物リスト")
        } // Navigation
    }
}

struct FruitBasicView_Previews: PreviewProvider {
    static var previews: some View {
        FruitBasicView()
    }
}
