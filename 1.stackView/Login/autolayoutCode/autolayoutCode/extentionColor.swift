//
//  extentionColor.swift
//  autolayoutCode
//
//  Created by Huy on 3/2/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import UIKit
extension UIStackView{
    func changeColorView(color : UIColor){
        let changeLayer = CAShapeLayer()
        self.layer.insertSublayer(changeLayer, at: 0)
        changeLayer.path = UIBezierPath(rect: self.bounds).cgPath
        changeLayer.fillColor = color.cgColor
        
    }
    
}

