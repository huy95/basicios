//
//  cellCollectionView.swift
//  collectionViewBasic
//
//  Created by Huy on 3/10/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class cellCollectionView: UICollectionViewCell {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    func setuplayout(){
        self.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 4).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -4).isActive = true
    }
    override init(frame: CGRect) {
           super.init(frame: frame)
           
           setuplayout()
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
