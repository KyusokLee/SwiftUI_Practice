//
//  IOSDeviceModel.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import Foundation

struct IOSDeviceModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}
