//
//  TabbarControllerViewController.swift
//  9.UITabbarController
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TabbarControllerViewController: UITabBarController {
    var viewController1: ViewController1 = ViewController1()
    var viewController2: ViewController2 = ViewController2()
    var viewController3: ViewController3 = ViewController3()
    var subViewController : [UIViewController] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        subViewController.append(viewController1)
        subViewController.append(viewController2)
        subViewController.append(viewController3)
        
        viewController1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "contacts-blue"), selectedImage: UIImage(named: "contacts-gray"))
        viewController1.tabBarItem.tag = 0
        
        viewController2.tabBarItem = UITabBarItem(title: "Cander", image: UIImage(named: "contacts-blue"), selectedImage: UIImage(named: "contacts-gray"))
               viewController2.tabBarItem.tag = 1
        viewController3.tabBarItem = UITabBarItem(title: "bar", image: UIImage(named: "contacts-blue"), selectedImage: UIImage(named: "contacts-gray"))
               viewController3.tabBarItem.tag = 2
        self.setViewControllers(subViewController, animated: true)
        self.selectedIndex = 0
        

        // Do any additional setup after loading the view.
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
