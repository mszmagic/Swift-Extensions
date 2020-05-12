//
//  extensions.swift
//  Test
//
//  Created by Shunzhe Ma on 5/12/20.
//  Copyright © 2020 Shunzhe Ma. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    
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

extension String {
    
    /*
     文字列を渡してシンプルなUIAlertControllerを表示する。
     Show a simple UIAlertController with the given string.
     */
    func showSimpleAlert(on: UIViewController?) {
        guard let onVC = on else { return }
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "アラート", message: self, preferredStyle: .alert)
            let actionDismiss = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
            alert.addAction(actionDismiss)
            onVC.present(alert, animated: true, completion: nil)
        }
    }
    
    func アラートを表示(on: UIViewController?) {
        showSimpleAlert(on: on)
    }
    
}

extension UITableView {

    /*
     UITableViewを最下部にスクロールする
     Scroll the UITableView to the bottom
     */
    func scrollToBottom(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(
                row: self.numberOfRows(inSection:  self.numberOfSections-1) - 1,
                section: self.numberOfSections - 1)
            self.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }
    
    func 最下部(){
        scrollToBottom()
    }

    /*
     UITableViewを最上部にスクロールする
     Scroll the UITableView to the top
     */
    func scrollToTop() {

        DispatchQueue.main.async {
            let indexPath = IndexPath(row: 0, section: 0)
            self.scrollToRow(at: indexPath, at: .top, animated: false)
        }
    }
    
    func 最上部(){
        scrollToTop()
    }
    
}

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

public extension UIColor {
    
    /*
     オーシャンブルー
     */
    class var oceanBlue: UIColor {
        return .init(red: 0, green: 105/255, blue: 148/255, alpha: 1)
    }
    
    class var オーシャンブルー: UIColor { return oceanBlue }
    
    /*
     ライトスカイブルー
     */
    class var lightSkyBlue: UIColor {
        return .init(red: 135/255, green: 206/255, blue: 235/255, alpha: 1)
    }
    
    class var ライトスカイブルー: UIColor { return lightSkyBlue }
    
    /*
     スカイブルー
     */
    class var skyBlue: UIColor {
        return .init(red: 0, green: 191/255, blue: 255/255, alpha: 1)
    }
    
    class var スカイブルー: UIColor { return skyBlue }
    
    /*
     フォレストグリーン
     */
    class var forestGreeen: UIColor {
        return .init(red: 34/255, green: 139/255, blue: 34/255, alpha: 1)
    }
    
    class var フォレストグリーン: UIColor { return forestGreeen }
    
    /*
     イエローグリーン
     */
    class var yellowGreen: UIColor {
        return .init(red: 154/255, green: 205/255, blue: 50/255, alpha: 1)
    }
    
    class var イエローグリーン: UIColor { return yellowGreen }
    
}
