//
//  DatePickerPractice.swift
//  SwiftUIBasicPractice
//
//  Created by Kyus'lee on 2023/04/29.
//

import SwiftUI

struct DatePickerPractice: View {
    
    @State var selectedDate1 = Date()
    @State var selectedDate2 = Date()
    @State var selectedDate3 = Date()
    @State var selectedDate4 = Date()
    
    // 現在の時刻
    var currentDate: String {
        // Date(): 今日の日時・時間を持ってくる
        let current = Date()
        let formatter = DateFormatter()
        
        // 日本時刻で表示
        formatter.locale = Locale(identifier: "ja_JP") // 日時と時間
        // formatter.timeZone = TimeZone(abbreviation: "JST") // 日本の時間帯
        
        // 形の変換
        // a: 午前、午後を表す
        formatter.dateFormat = "yyyy年 MM月 dd日 a HH時 mm分"
        formatter.amSymbol = "午前"
        formatter.pmSymbol = "午後"
        
        // String型に変換してreturn
        return formatter.string(from: current)
    }
    
    // DatePicker用のDateFormatter
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators:  true) {
            VStack(spacing: 20) {
                Text("Current Date: \(currentDate)")
                
                Divider()
                
                // 基本 DatePicker
                VStack {
                    DatePicker("基本 DatePicker", selection: $selectedDate1)
                    // accentColorもdeprecated予定
                        .tint(.red)
                        .datePickerStyle(.compact)
                    
                    Text("選ばれた日時は: \(dateToJP(selectedDate:selectedDate1))")
                }
                
                Divider()
                
                // Calendar (graphical)
                VStack {
                    DatePicker("カレンダー", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    
                    Text("選ばれた日時は: \(dateToJP(selectedDate:selectedDate2))")
                }
                
                Divider()
                
                // Wheel
                VStack {
                    DatePicker("Wheel", selection: $selectedDate3)
                        .datePickerStyle(.wheel)
                    
                    Text("選ばれた日時は: \(dateToJP(selectedDate:selectedDate3))")
                }
                
                Divider()
                
                // 日付だけを
                VStack {
                    DatePicker("日だけを選択", selection: $selectedDate4, displayedComponents: [.date])
                    Text("選ばれた日付は: \(dateToJP(selectedDate:selectedDate4))")
                }
                
            } // VStack
            .padding()
        } // ScrollView
    } // Body
    
    // MARK: - Function
    func dateToJP(selectedDate: Date) -> String {
        let formatter = DateFormatter()
        
        // 日本時刻で表示
        formatter.locale = Locale(identifier: "ja_JP") // 日時と時間
        // formatter.timeZone = TimeZone(abbreviation: "JST") // 日本の時間帯
        
        // 形の変換
        // a: 午前、午後を表す
        formatter.dateFormat = "yyyy年 MM月 dd日 a HH時 mm分"
        formatter.amSymbol = "午前"
        formatter.pmSymbol = "午後"
        
        // String型に変換してreturn
        return formatter.string(from: selectedDate)
    }
}

struct DatePickerPractice_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerPractice()
    }
}
