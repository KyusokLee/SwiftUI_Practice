//
//  AlertPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/27.
//

import SwiftUI

struct AlertPractice: View {
    // property
    @State var showAlert1 = false
    @State var showAlert2 = false
    @State var showAlert3 = false
    @State var showAlert4 = false
    
    @State var backgroundColor = Color.yellow
    @State var alertTitle = ""
    @State var alertMessage = ""
    @State var alertType: AlertCase?
    
    enum AlertCase {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                // 1
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("Num 1 Alert")
                }
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("パスワードエラーです。もう一度確認してください。"))
                }
                
                // 2
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("Num 2 Alert")
                }
                .alert(isPresented: $showAlert2) {
                    getAlert2()
                }
                
                // 3
                HStack(spacing: 10) {
                    Button {
                        alertTitle = "映像アップロードエラー"
                        alertMessage = "映像が正しくアップロードされておりません。もう一度確認してください。"
                        showAlert3.toggle()
                    } label: {
                        Text("Num 3 Alert Fail")
                    }
                    
                    Button {
                        alertTitle = "映像アップロード成功"
                        alertMessage = "映像が正しくアップロードされました。"
                        showAlert3.toggle()
                    } label: {
                        Text("Num 3 Alert Success")
                    }
                } // HStack
                .alert(isPresented: $showAlert3) {
                    getAlert3()
                }
                
                // 4
                // Enum Case活用例
                HStack(spacing: 10) {
                    Button {
                        alertType = .error
                        showAlert4.toggle()
                    } label: {
                        Text("Num 4 Alert Fail")
                    }
                    
                    Button {
                        alertType = .success
                        showAlert4.toggle()
                    } label: {
                        Text("Num 4 Alert Success")
                    }
                } // HStack
                .alert(isPresented: $showAlert4) {
                    getAlert4()
                }
                

            } // VStack
        } // ZStack
    } // Body
    
    // Function
    // Alertもdeprecatedされる予定
    func getAlert2() -> Alert {
        return Alert(
            title: Text("メッセージ削除"),
            message: Text("メッセージを削除しますか？"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red.opacity(0.3)
            }),
            secondaryButton: .cancel()
        )
    }
    
    func getAlert3() -> Alert {
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            dismissButton: .default(Text("OK!"))
        )
    }
    
    func getAlert4() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("エラー発生！もう一度確認してください。"), dismissButton: .default(Text("OK!"), action: {
                backgroundColor = .red.opacity(0.3)
            }))
        
        case .success:
            return Alert(title: Text("ログインに成功しました！"), dismissButton: .default(Text("OK!"), action: {
                backgroundColor = .green
            }))
        
        default:
            return Alert(title: Text("ERROR"))
        }
        
    }
}

struct AlertPractice_Previews: PreviewProvider {
    static var previews: some View {
        AlertPractice()
    }
}
