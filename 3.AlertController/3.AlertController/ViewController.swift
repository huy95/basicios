//
//  ViewController.swift
//  3.AlertController
//
//  Created by Huy on 3/4/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Alert - code", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(UIColor.white, for: .normal)
        button.contentVerticalAlignment = .center
        return button
        }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        button.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func touchButton(){
//        let alert = UIAlertController(title: "take image", message: "choose image soure", preferredStyle: .alert)
//        let alert = UIAlertController(title: "take image", message: nil, preferredStyle: .actionSheet)
//        let cameraAction = UIAlertAction(title: "camera", style: .default)
//        let photoAction = UIAlertAction(title: "photo", style: .default)
//        let photoAction2 = UIAlertAction(title: "photo", style: .default)
//        let photoAction3 = UIAlertAction(title: "photo", style: .default)
//        alert.addAction(cameraAction)
//        alert.addAction(photoAction)
//        alert.addAction(photoAction2)
//        alert.addAction(photoAction3)
//        present(alert, animated:  true, completion: nil)
        let alert = UIAlertController(title: "Sắp xếp theo :", message: nil, preferredStyle: .alert)
                let d1 = UIAlertAction(title: "Phù hợp nhất", style: .default)
                let d2 = UIAlertAction(title: "Giá thấp nhất", style: .default)
                let d3 =  UIAlertAction(title: "Giá cao nhất", style: .default)
                let d4 = UIAlertAction(title: "Đánh giá sao nhiều nhất", style: .default)
                let d5 = UIAlertAction(title: "Đánh giá sao (5 đến 0)", style: .default)
                alert.addAction(d1)
                alert.addAction(d2)
                alert.addAction(d3)
                alert.addAction(d4)
                alert.addAction(d5)
                present(alert, animated:  true, completion:  nil)
        
    }
    func setupLayout(){
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

