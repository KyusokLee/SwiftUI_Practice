//
//  TextPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/06.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font Size: title, body, footnoteなど-> デバイスのサイズにresponsible
            Text("Text Practice")
                .font(.title)
                .fontWeight(.semibold)
                .underline(true, color: .blue)
                .italic()
                .strikethrough(true, color: .red)
            // SystemSizeは、textのsizeを固定するため、responsibleじゃないというデメリットがある
            Text("Text2".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            // 長いテキストの配置設定に関して
            Text("長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。長いテキストのalignmentです。")
                .multilineTextAlignment(.center)
                .foregroundColor(.brown.opacity(0.7))
        }
    }
}








struct TextPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextPractice()
    }
}
