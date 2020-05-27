//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/26/20.
//

import Foundation
import UIKit

extension UIViewController {
    
    func getUISceneDelegate() -> UISceneDelegate {
        return self.view.window?.windowScene?.delegate
    }
    
    func getUIApplicationDelegate() -> UIApplicationDelegate {
        return UIApplication.shared.delegate
    }
    
}
