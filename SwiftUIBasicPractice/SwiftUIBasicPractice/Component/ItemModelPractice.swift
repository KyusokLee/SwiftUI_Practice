//
//  ItemModelPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/22.
//

import SwiftUI

struct ItemModelPractice: View {
    // property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct ItemModelPractice_Previews: PreviewProvider {
    static var previews: some View {
        ItemModelPractice(title: "Item Title", count: 1, color: .red)
            .previewLayout(.sizeThatFits)
    }
}
