//
//  ViewController.swift
//  5.alert+pickcontroller
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonAlear: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionAlert(_ sender: Any) {
        //1 khoi tao UIalertController
        let alertController = UIAlertController(title: "khan cap", message: "chon bat ki", preferredStyle: .actionSheet)
        //2 khoi tao 3 can alert .. destrucive : khoi tao - mau do
        let alert1 = UIAlertAction(title: "yes", style: .destructive) {
            (ACTION) in print("yes")
        }
        let alert2 = UIAlertAction(title: "no", style: .default){
            (ACTION) in print("no")
        }
        let alert3 = UIAlertAction(title: "cancel", style: .cancel)
        //them alert vao UIalertController
        alertController.addAction(alert1)
        alertController.addAction(alert2)
        alertController.addAction(alert3)
        // nhan vao 1 trong cac alert1-2-3 thi se tat
        self.present(alertController, animated : true)

    }
}

