//
//  UserModel.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/01.
//

import Foundation

// SwiftUIでは、ListやForEachのようにデータを並べるView、またはAlert,ActionSheetのように画面を表示させる項目を正確に区分する必要があるとき、identifiable protocolを求める
// そのため、データ間の識別を可能にするために idを提供しなければならない

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
