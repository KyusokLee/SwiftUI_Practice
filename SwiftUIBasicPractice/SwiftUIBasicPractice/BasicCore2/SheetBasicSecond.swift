//
//  SheetBasicSecond.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/24.
//

import SwiftUI

struct SheetBasicSecond: View {
    // property
    // Environment wrapper
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button {
                // Sheet dismiss action
                presentaionMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

struct SheetBasicSecond_Previews: PreviewProvider {
    static var previews: some View {
        SheetBasicSecond()
    }
}
