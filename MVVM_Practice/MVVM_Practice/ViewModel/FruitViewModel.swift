//
//  FruitViewModel.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/01.
//

import Foundation

// ObservableObject化することで、Viewに渡したり、Viewから受け取ることが可能となる
class FruitViewModel: ObservableObject {
    // Published wrapperは、 @State と似ているような動作をしており、状態の値を宣言する
    // Classの中では、 @Published を使うという点が異なる
    // @Publishedは、 Fruit配列の値がViewから変更されたらFruitViewModelで新しい変更事項に気づいて更新するという点
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading = false
    
    // init
    init() {
        getFruit()
    }
    
    // MARK: - Function
    // Viewでは、ひたすらUIに関する処理だけを行わせるようにする
    // MVVMでは、ViewModelでFunction Logicを書く！
    
    // Fruit生成して、Arrayに追加する間数
    func getFruit() {
        
        // fruitのそれぞれの値を宣言
        let fruit1 = FruitModel(name: "イチゴ", count: 1)
        let fruit2 = FruitModel(name: "りんご", count: 22)
        let fruit3 = FruitModel(name: "バナナ", count: 77)
        
        // 3秒 Delay後、fruitArrayに宣言した値をappendする
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    // fruitArrayから値を削除するLogic
    // indexSetは、UIKit の indexPathと同様な感じ
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
