//
//  TogglePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/29.
//

import SwiftUI

struct TogglePractice: View {
    
    @State var isToggleOn = false
    
    
    
    
    
    var body: some View {
        VStack {
            HStack {
                Text("ログイン 状態:")
                Text(isToggleOn ? "オンライン" : "オフライン")
            } // HStack
            Toggle(isOn: $isToggleOn) {
                Text("ログイン状態を選ぶ")
            } // Toggle
            // tintは、deprecatedされる予定
            .toggleStyle(SwitchToggleStyle(tint: .green.opacity(0.7)))
            
            Spacer()
        } // VStack
        .padding(.horizontal, 80)
    }
}

struct TogglePractice_Previews: PreviewProvider {
    static var previews: some View {
        TogglePractice()
    }
}
