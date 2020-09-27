//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/26/20.
//

#if os(iOS)

import Foundation
import UIKit

@available(iOS 13.0, *)
public extension UIViewController {
    
    @available(iOS 13.0, *)
    func getUISceneDelegate() -> UISceneDelegate? {
        return self.view.window?.windowScene?.delegate
    }
    
    @available(iOS 13.0, *)
    func getUIApplicationDelegate() -> UIApplicationDelegate? {
        return UIApplication.shared.delegate
    }
    
}

#endif
