//
//  IOSDeviceViewModel.swift
//  MVVM_Practice
//
//  Created by Kyus'lee on 2023/05/02.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    // property
    @Published var iosDeviceArray: [IOSDeviceModel] = []
    
    // init
    init() {
        getData()
    }
 
    // function
    func getData() {
        let iPhone = IOSDeviceModel(name: "iPhone")
        let iPad = IOSDeviceModel(name: "iPad")
        let iMac = IOSDeviceModel(name: "iMac")
        let appleWatch = IOSDeviceModel(name: "Apple Watch")
        
        self.iosDeviceArray.append(iPhone)
        self.iosDeviceArray.append(iPad)
        self.iosDeviceArray.append(iMac)
        self.iosDeviceArray.append(appleWatch)
    }
}
