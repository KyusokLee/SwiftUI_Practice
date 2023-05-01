//
//  OnTapGesturePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct OnTapGesturePractice: View {
    
    @State var isSelected = false
    let rectangleHeight: CGFloat = 200
    let basicButtonHeight: CGFloat = 55
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: rectangleHeight)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            // MARK: - buttonがTapされるとき色が薄くなることに対して、onTapGestureは同様の動作をしない
            
            // 1. Basic Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 基本Buttonです")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: basicButtonHeight)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25.0)
            }
            
            // 2. onTabGesture1回 Tap!
            Text("2. onTapGesture 1回 Tap!")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: basicButtonHeight)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture2回 Tap!
            Text("3. onTapGesture 2回 Tap!")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: basicButtonHeight)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
            
        } // VStack
        .padding(40)
    }
}

struct OnTapGesturePractice_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGesturePractice()
    }
}
