//
//  extensionSize.swift
//  autoLayout-code-optimal
//
//  Created by Huy on 3/3/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import UIKit

extension UIDevice {
    static func setSize(iPhone : CGFloat , iPad : CGFloat) -> Float {
        switch UIDevice.current.userInterfaceIdiom {
        case .phone :
            return Float(iPhone)
        case .pad :
            return Float(iPad)
        default:
            return 0
        }
    }
}

