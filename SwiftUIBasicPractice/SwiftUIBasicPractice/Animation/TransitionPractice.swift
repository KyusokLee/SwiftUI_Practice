//
//  TransitionPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct TransitionPractice: View {
    
    // property
    @State var showTransition: Bool = false
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                
                // 1番: Move Transition
                // bottomから上に上がるmove transition
                //    .transition(.move(edge: .bottom))
                
                // 2番: Opacity Transition
                //  .opacity(showTransition ? 1.0 : 0.0)と同じ
                //  .transition(.opacity)
                
                // 3番: Scale Transition
                //  .transition(.scale)
                
                // 4番: Asymmetric Transition
                // Start地点と End地点をCustomizeして指定できる
                // 非対称 Transition
                // insertion: Start点
                // removal: End点
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing))
                    )
            }
        }
        // bottomの部分だけをSafeAreaを無視する
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionPractice_Previews: PreviewProvider {
    static var previews: some View {
        TransitionPractice()
    }
}
