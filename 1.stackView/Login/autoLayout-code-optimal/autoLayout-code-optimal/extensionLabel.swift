//
//  extensionLabel.swift
//  autoLayout-code-optimal
//
//  Created by Huy on 3/3/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text : String? , fontSize : CGFloat, parentStackView : UIStackView){
        self.init()
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.textAlignment = textAlignment
        self.font = .boldSystemFont(ofSize: fontSize)
        parentStackView.addArrangedSubview(self)
    }
//    convenience init(text : String? , fontSize : CGFloat, textAlignment : UILabeltextAlignment, parentStackView : UIStackView){
//        self.init()
//        self.translatesAutoresizingMaskIntoConstraints = false
//        self.text = text
//        self.font = .boldSystemFont(ofSize: fontSize)
//        parentStackView.addArrangedSubview(self)
//        self.textAlignment = textAlignment
//    }
    
}
extension UITextField {
    convenience init (placehoder : String?, borderStyle: UITextField.BorderStyle, parentStack : UIStackView){
        self.init()
        self.placeholder = placehoder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.borderStyle = borderStyle
        parentStack.addArrangedSubview(self)
    }
}
// labelFirst.textAlignment = .left
//extMiddle.translatesAutoresizingMaskIntoConstraints = false
//textMiddle.placeholder = "Middle"
//textMiddle.borderStyle = .roundedRect
//stackView12.addArrangedSubview(textMiddle)
