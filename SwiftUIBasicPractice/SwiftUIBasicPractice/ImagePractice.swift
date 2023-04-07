//
//  ImagePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/07.
//

import SwiftUI

struct ImagePractice: View {
    var body: some View {
        
        //円型imageを表現する２つの方法
        VStack(spacing: 20) {
            Image("NatureImage")
            // Resizableをして、Sizeが変更可能なUIにする
            // UIKitのcornerRadiusと丸くなる強度が違うような気がする
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
            // UIKitと同じく円にしたいなら、width or height値の 1/2にする
            // widthとheightは同値にする
                .cornerRadius(150)
                .overlay {
                    RoundedRectangle(cornerRadius: 155)
                        .stroke(.green, lineWidth: 7)
                        .frame(width: 310, height: 310)
                }
            Divider()
            
            Image("NatureImage")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay {
                    RoundedRectangle(cornerRadius: 155)
                        .stroke(.green, lineWidth: 7)
                        .frame(width: 310, height: 310)
                }
            Divider()
        }
    }
}

struct ImagePractice_Previews: PreviewProvider {
    static var previews: some View {
        ImagePractice()
    }
}
