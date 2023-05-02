//
//  FruitModel.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/01.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
