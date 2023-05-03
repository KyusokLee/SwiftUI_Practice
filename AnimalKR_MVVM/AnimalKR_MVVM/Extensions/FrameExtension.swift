//
//  FrameExtension.swift
//  AnimalKR_MVVM
//
//  Created by Kyus'lee on 2023/05/03.
//

import SwiftUI

// MARK: - Responsice Screen

extension CGFloat {
    // Optionalで設定
    static let window = UIApplication.shared.connectedScenes.first as? UIWindowScene
    static let screenSize = window?.screen.bounds
    static let screenWidth = screenSize?.width
    static let screenHeight = screenSize?.height
}

// MARK: - Frame Modifier
extension View {
    func verticalCenter() -> some View {
        self.frame(maxHeight: .infinity, alignment: .center)
    }
    
    func verticalTop() -> some View {
        self.frame(maxHeight: .infinity, alignment: .top)
    }
    
    func verticalBottom() -> some View {
        self.frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    func horizontalCenter() -> some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
    
    func horizontalLeading() -> some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func horizontalTrailing() -> some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
}
