//
//  File.swift
//  
//
//  Created by Shunzhe Ma on 5/12/20.
//

#if os(iOS) || os(watchOS)

import Foundation
import UIKit

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

#endif
