//
//  ViewController.swift
//  10.tabberStorybord
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button : UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        button?.addTarget(self, action: #selector(chuyen), for: .touchUpInside )
    }
    @objc func chuyen(){
        let merHome = screen2()
        merHome.modalPresentationStyle = .fullScreen
        present(merHome, animated: true, completion: nil)
    }

}

