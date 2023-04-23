//
//  BindingChild.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct BindingChild: View {
    // property
    @State var buttonColor: Color = Color.blue.opacity(0.7)
    // Binding Wrapper
    // Parentから受け取ったデータをChild で使いたいので、そのときはBindingを使う
    // Stateを使うと、重複になるので、Bindingを使うべき
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            buttonColor = Color.pink
            backgroundColor = Color.orange
            title = "Binding Child View"
        } label: {
            // label
            Text("Child Viewへ移動")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(8)
            
        }

    }
}

struct BindingChild_Previews: PreviewProvider {
    // どこの親View（Parent）からBindingされるかは、まだわからない(immutable)なので、そのときは、constantをつけることで解決できる。
    // constantのparameterの値はTypeが一致すればなんでもいい
    // Color.orangeや""などで任意で定義
    // previewLayout(.sizeThatFits)を用いて、全体のLayoutをSizeに合わせる
    
    static var previews: some View {
        BindingChild(backgroundColor: .constant(Color.orange), title: .constant("Binding Child"))
            .previewLayout(.sizeThatFits)
    }
}
