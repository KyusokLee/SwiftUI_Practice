//
//  ActionSheetPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/28.
//

import SwiftUI

struct ActionSheetPractice: View {
    
    // Alertと似たような動作をするが、やはり、ActionSheetの方がCustomizeしやすいかも！
    
    // property
    @State var showActionSheet = false
    @State var resultActionSheet = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            // context
            
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Kyulee")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
            } // HStack
            .padding(.horizontal)
            
            Rectangle()
            // fitを使うことで、1:1比率のRectanlge生成可能
            // 0.5: 横 1 / 縦 2
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        } // VStack
        // actionSheetも deprecated予定
        // -> Appleは、confirmationDialogを奨励する
        .actionSheet(isPresented: $showActionSheet) {
            // actionSheetが含まれる内容 ActionSheet Type
            getActionSheet()
        }
    } // Body
    
    // Function
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            resultActionSheet = "共有されました"
        }
        let reportButton: ActionSheet.Button = .default(Text("Report")) {
            resultActionSheet = "通報しました"
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            resultActionSheet = "削除しました"
        }
        let canButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet Title"),
            message: Text("ActionSheet Message"),
            buttons: [
                shareButton,
                reportButton,
                deleteButton,
                canButton
            ]
        )
    }
}

struct ActionSheetPractice_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetPractice()
    }
}
