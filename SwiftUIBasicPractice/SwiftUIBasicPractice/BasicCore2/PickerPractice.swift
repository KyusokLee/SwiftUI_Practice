//
//  PickerPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/29.
//

import SwiftUI

struct PickerPractice: View {
    
    let typeOfPhone : [String] = [
        "Apple", "Samsung", "Xiaomi", "Other else"
    ]
    @State var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    // Picker(selection, label, content)はdeprecatedされる予定
                    Picker(selection: $selectedIndex, label: Text("デバイス選択")) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) { index in
                            Text(typeOfPhone[index])
                        } // Loop
                    } // Picker
                    .pickerStyle(.segmented)
                    // defaultは .automatic (menuはほぼ同様)
                    // inline: 複数の選択肢からcheckを表示する形
                    // navigationLink: navigationの動作のようにViewが変わる
                    // wheel: DatePickerと似ているUI
                    // segmented: segmentの形
                } // Section
                
                Text("スマホの製造社は \(typeOfPhone[selectedIndex])です")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                
            } // Form
            .navigationTitle(Text("現在使っているデバイスは?"))
            .navigationBarTitleDisplayMode(.inline)
        } // NavigationView
    }
}

struct PickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        PickerPractice()
    }
}
