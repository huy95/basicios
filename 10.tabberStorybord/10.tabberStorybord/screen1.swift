//
//  screen1.swift
//  10.tabberStorybord
//
//  Created by Huy on 3/13/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class screen1: UIViewController {
    @IBOutlet weak var button : UIButton?
    let view1 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
    
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(view1)
//        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        view1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
//        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button?.addTarget(self, action: #selector(chuyen), for: .touchUpInside )
        
        
    }
    @objc func chuyen(){
        let merHome = screen2()
        merHome.modalPresentationStyle = .fullScreen
        present(merHome, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
