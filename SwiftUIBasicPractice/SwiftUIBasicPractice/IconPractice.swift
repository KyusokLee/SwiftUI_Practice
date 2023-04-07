//
//  IconPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/07.
//

import SwiftUI

struct IconPractice: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // UIKitのrenderingModeと似ている
            // Originalの色になる
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconPractice_Previews: PreviewProvider {
    static var previews: some View {
        IconPractice()
    }
}
