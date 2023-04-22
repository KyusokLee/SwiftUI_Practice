//
//  ExtractSubviewPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/22.
//

import SwiftUI

struct ExtractSubviewPractice: View {
    var body: some View {
        ZStack {
            //background
            Color.cyan
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            // SubViewをコンポーネント化して、使用性の効率を上げる (再使用を可能とする)
            ItemModelPractice(title: "Apple", count: 1, color: .red)
            ItemModelPractice(title: "Orange", count: 2, color: .orange)
            ItemModelPractice(title: "Banana", count: 3, color: .yellow)
        }
    }
}

struct ExtractSubviewPractice_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewPractice()
    }
}
