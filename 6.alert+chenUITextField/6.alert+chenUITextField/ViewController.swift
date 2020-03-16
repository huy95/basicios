//
//  ViewController.swift
//  6.alert+chenUITextField
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var alert: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidLoad()
        loginEmail()
    }
    func loginEmail(){
         alert = UIAlertController(title: "Email", message: "", preferredStyle: <#T##UIAlertController.Style#>)
      
        
    }


}

