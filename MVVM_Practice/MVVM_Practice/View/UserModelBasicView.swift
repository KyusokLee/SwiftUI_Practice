//
//  UserModelBasicView.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/01.
//

import SwiftUI

struct UserModelBasicView: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "ギュソク", userName: "Kyulee", followerCount: 777, isChecked: true),
        UserModel(displayName: "David", userName: "David2020", followerCount: 100, isChecked: false),
        UserModel(displayName: "Richard", userName: "Riky28", followerCount: 300, isChecked: false),
        UserModel(displayName: "Daigo", userName: "Diego2001", followerCount: 555, isChecked: true)
    ]
    let circleWidth: CGFloat = 35
    let circleHeight: CGFloat = 35
    
    var body: some View {
        NavigationView {
            List {
                // idの値がもう既に固有値として設定されたため、id: \.selfのような処理はエラーになる
                ForEach(users) { user in
                    HStack(spacing: 20) {
                        //Text(user.id)
                        Circle()
                            .frame(width: circleWidth, height: circleHeight)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // VStack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // VStack
                    } // HStack
                    .padding(.vertical, 10)
                } // Loop
            } // List
            .navigationTitle("会員リスト")
        } // Navigation
    }
}

struct UserModelBasicView_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBasicView()
    }
}
