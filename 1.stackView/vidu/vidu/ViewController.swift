//
//  ViewController.swift
//  vidu
//
//  Created by Huy on 3/2/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let view1 : UITextView = {
        let view1 = UITextView()
        view1.translatesAutoresizingMaskIntoConstraints = false
    
        return view1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
       view1.bottomAnchor.constraint(equalTo: view1.topAnchor, constant: 30).isActive = true
        
        
    }
    

}

