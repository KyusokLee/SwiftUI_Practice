//
//  ListPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/26.
//

import SwiftUI

struct ListPractice: View {
    
    // property
    @State var fruits: [String] = [
        "りんご", "オレンジ", "バナナ", "イチゴ"
    ]
    
    @State var vegetables: [String] = [
        "キュウリ", "きのこ", "ピーマン", "キャベツ"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    // content
                    // 自分自身を回す
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                    
                } header: {
                    // header
                    Text("果物の種類")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // Section 1
                
                // Sectionを分けると、show・hideのボタンが自動で生成される
                Section {
                    // content
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable)
                            .font(.body)
                            .padding(.vertical)
                    }
                } header: {
                    // header
                    Text("野菜の種類")
                        .font(.headline)
                        .foregroundColor(.purple)
                }


            } // List
            .navigationTitle("Kyuleeマート")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton )
        } // Navigation
    } // Body
    
    // MARK: - Function
    // indexSetはUIKitのindexPathと同様のイメージ(かな?)
    // 削除機能
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    // 移動機能
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // addButtonのView生成
    // 今回はFruitだけをEditができるようにした
    var addButton: some View {
        Button {
            fruits.append("イチゴ！!!!")
        } label: {
            Text("Add")
        }

    }
    
}

struct ListPractice_Previews: PreviewProvider {
    static var previews: some View {
        ListPractice()
    }
}
