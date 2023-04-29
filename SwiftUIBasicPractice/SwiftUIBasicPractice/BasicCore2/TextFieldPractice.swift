//
//  TextFieldPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/29.
//

import SwiftUI

struct TextFieldPractice: View {
    
    // property
    @State var inputText = ""
    @State var userNameData = [String]()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
//                //  TextFieldは 1行 - 少ない量の入力時、使用
//                TextField("少なくとも、2文字以上を入力", text: $inputText)
//                    // .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextEditorは、複数の行である
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.6))
                                
                Button {
                    // 名前が2文字以上の時、saveTextを可能に
                    if isTextValid() {
                        saveText()
                    }
                } label: {
                    Text("SAVE")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            isTextValid() ? .blue : .gray.opacity(0.6))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextValid())

                Spacer()
                
                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }
                
            } // VStack
            .padding()
            .navigationTitle("あなたの名前は?")
        } // Navigation
    } // Body
    
    // MARK: - Function
    func isTextValid() -> Bool {
        // 2個以上のtextになると、true,じゃないとfalse
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
    
    
}

struct TextFieldPractice_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPractice()
    }
}
