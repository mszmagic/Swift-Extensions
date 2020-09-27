//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

#if os(iOS)

import Foundation
import UIKit

@available(iOS 13.0, *)
public extension UITableView {

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

#endif
