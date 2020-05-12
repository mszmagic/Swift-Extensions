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
    
}
