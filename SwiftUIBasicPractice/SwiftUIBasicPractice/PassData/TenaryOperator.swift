//
//  TenaryOperator.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/23.
//

import SwiftUI

struct TenaryOperator: View {
    // property
    @State var isStaringState: Bool = false
    
    var body: some View {
        VStack {
            // 1. if else文
            Button {
                isStaringState.toggle()
            } label: {
                Text("if else Button: \(isStaringState.description)")
            }
            
            if isStaringState {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            }
            
            
            // 2. 3項演算子を用いたState
            Button {
                isStaringState.toggle()
            } label: {
                Text("3項演算子　Button: \(isStaringState.description)")
            }
            
            Text(isStaringState ? "Red" : "Blue")
            
            RoundedRectangle(cornerRadius: isStaringState ? 25.0 : 0)
                .fill(isStaringState ? Color.red : Color.blue)
                .frame(
                    width: isStaringState ? 200 : 50,
                    height: isStaringState ? 400 : 100
                )
            Spacer()
        }
    }
}

struct TenaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TenaryOperator()
    }
}
