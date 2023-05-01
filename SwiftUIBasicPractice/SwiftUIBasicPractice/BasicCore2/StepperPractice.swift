//
//  StepperPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct StepperPractice: View {
    
    @State var stepperValue: Int = 0
    @State var extraWidth: CGFloat = 0
    let baseWidth: CGFloat = 100
    let baseHeight: CGFloat = 100
    let incrementedValue: CGFloat = 20
    let decrementedValue: CGFloat = -20
    
    var body: some View {
        VStack {
            // Binding関連は全部$サインであることを確認!
            Stepper("基本 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: baseWidth + extraWidth, height: baseHeight)
            
            Stepper("四角形のwidth変換") {
                // + を押すと変化される
                changeWidth(amount: incrementedValue)
            } onDecrement: {
                // - を押すと変化される
                changeWidth(amount: decrementedValue)
            }
            .padding()
        } // VStack
    } // Body
    
    // MARK: - Function
    func changeWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            extraWidth += amount
        }
    }
}

struct StepperPractice_Previews: PreviewProvider {
    static var previews: some View {
        StepperPractice()
    }
}
