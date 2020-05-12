//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

import Foundation
import UIKit

public extension UIView {
    
    /*
     ボーダーで縁取られ、丸みを帯びたボタンとしてUIViewを設定する。
     */
    func setUpOutlinedRoundButton(color: UIColor = .systemPink) {
        self.layer.cornerRadius = 10
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 2
        self.clipsToBounds = true
    }
    
    func 丸みのあるボーダー(color: UIColor = .systemPink) {
        setUpOutlinedRoundButton(color: color)
    }
    
    /*
     丸みを帯びたボタンとしてUIViewを設定する
     */
    func setUpRoundButton(color: UIColor = .systemPink) {
        self.layer.cornerRadius = 10
        self.backgroundColor = color
        self.clipsToBounds = true
    }
    
    func 丸め(color: UIColor = .systemPink){
        setUpRoundButton(color: color)
    }
    
}
