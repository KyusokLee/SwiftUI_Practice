//
//  StatePractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/21.
//

import SwiftUI

struct StatePractice: View {
    // property
    @State var backgroundColor: Color = Color.blue.opacity(0.7)
    @State var myTitle: String = "Button is not pressed yet"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.title3)
                    .fontWeight(.bold)
                
                HStack (spacing: 20) {
                    // Button1は countを +1　ずつ
                    Button {
                        // action
                        self.backgroundColor = .red.opacity(0.7)
                        self.myTitle = "Button 1 is pressed"
                        self.count += 1
                    } label: {
                        Text("ボタン1")
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Color.red.opacity(0.7)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            )
                    }
                    
                    // Button2は countを -1　ずつ
                    Button {
                        // action
                        backgroundColor = .purple.opacity(0.7)
                        myTitle = "Button 2 is pressed"
                        count -= 1
                    } label: {
                        Text("ボタン2")
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Color.purple.opacity(0.7)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            )
                    }

                }
                
                // Reset Buttonは countを0に初期化し、背景色も青色に戻す
                Button {
                    // action
                    backgroundColor = .blue.opacity(0.7)
                    myTitle = "Reset Button is pressed"
                    count = 0
                } label: {
                    Text("Reset Button")
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Color.blue.opacity(0.7)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
            }
            .foregroundColor(.white)
            
        }
    }
}

struct StatePractice_Previews: PreviewProvider {
    static var previews: some View {
        StatePractice()
    }
}
