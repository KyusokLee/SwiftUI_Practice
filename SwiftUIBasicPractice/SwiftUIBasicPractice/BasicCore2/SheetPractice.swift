//
//  SheetPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/24.
//

import SwiftUI

struct SheetPractice: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.green
                .ignoresSafeArea()
            
            // content
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
//            // UIKitでのpresent defaultと同様
//            .sheet(isPresented: $showSheet) {
//                SheetBasicSecond()
//            }
            
            // UIKitでのoverCurrentContextと同様
            .fullScreenCover(isPresented: $showSheet) {
                SheetBasicSecond()
            }

        }
    }
}

struct SheetPractice_Previews: PreviewProvider {
    static var previews: some View {
        SheetPractice()
    }
}
