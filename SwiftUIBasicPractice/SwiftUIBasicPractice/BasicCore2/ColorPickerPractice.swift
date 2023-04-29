//
//  ColorPickerPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/29.
//

import SwiftUI

struct ColorPickerPractice: View {
    
    @State var backgroundColor = Color.blue.opacity(0.7)
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("色を選んでください")
            }
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        } // ZStack
    }
}

struct ColorPickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerPractice()
    }
}
