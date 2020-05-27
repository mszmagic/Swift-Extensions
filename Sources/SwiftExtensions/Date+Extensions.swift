//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

import Foundation

public extension Date {
    
    /*
     日付オブジェクトの分かりやすい説明を取得する
     Get the plain words description from a date object
     */
    func getString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter.string(from: self)
    }
    
    func 文() -> String { return getString() }
    
    func getComponent(_ component: Calendar.Component) -> Int {
        return Calendar.current.component(component, from: self)
    }
    
    func 取得(_ component: Calendar.Component) -> Int { getComponent(component) }
    
    //週番号を取得します
    func getWeekNumber() -> Int {
        return self.取得(.day) / 7
    }
    
    func 週番号() -> Int {
        return getWeekNumber()
    }
    
    //曜日番号を取得します
    func getDayNumberInWeek() -> Int {
        return self.取得(.day) % 7
    }
    
    func 曜日番号() -> Int {
        return getDayNumberInWeek()
    }
    
}
