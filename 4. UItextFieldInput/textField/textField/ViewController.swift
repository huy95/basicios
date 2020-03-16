//
//  ViewController.swift
//  textField
//
//  Created by Huy on 3/10/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
//        textField.keyboardType = .emailAddress
        // Do any additional setup after loading the view.
    }


    @IBAction func dimissKeyboard(_ sender: Any) {
        textField?.resignFirstResponder()
    }
}

extension ViewController : UITextFieldDelegate  {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
          print("text did begin editing")
           return true
      }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("text shoud Begin!")
       
    }
  
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("text typed : \(string)")
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("return on")
        return true
    }
    
    
}
