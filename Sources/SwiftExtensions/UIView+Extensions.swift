//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

import Foundation
import UIKit

@available(iOS 13.0, *)
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
    
    func takeScreenshot() -> UIImage? {
        
        // Begin context
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)

        // Draw view in that context
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)

        // And finally, get image
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
        
    }
    
    func スクリーンショット() -> UIImage? { return takeScreenshot() }
    
}
