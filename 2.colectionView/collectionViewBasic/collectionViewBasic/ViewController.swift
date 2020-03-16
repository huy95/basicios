//
//  ViewController.swift
//  collectionViewBasic
//
//  Created by Huy on 3/10/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cell = "test1"
    var collectionBasic : UICollectionView = {
        
//        let collectionViewFlowLayout  = UICollectionViewFlowLayout()
//
//        let collectionBasic = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewFlowLayout)
//
//        collectionBasic.translatesAutoresizingMaskIntoConstraints = false
//
//         collectionBasic.setCollectionViewLayout(collectionViewFlowLayout, animated: true)
//
//        collectionViewFlowLayout.scrollDirection = .horizontal
        //        collectionBasic.register(cellCollectionView.self, forCellWithReuseIdentifier: "test1")
        
//
//
//        return collectionBasic
        let layout = UICollectionViewFlowLayout()
        
        // khởi tạo collectionView truyền vào layout vừa khởi tạo ở trên
        let collectionBasic = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        
        // tắt phụ thuộc của control vào frame, auto lauout sẽ không có tác dụng nếu thuộc tính này = true
        collectionBasic.translatesAutoresizingMaskIntoConstraints = false
        
        // đổ màu collectionView
//        collectionBasic.backgroundColor = UIColor.groupTableViewBackground
        
        // đăng ký cell với collectionView
        collectionBasic.register(cellCollectionView.self, forCellWithReuseIdentifier: "test1")
        
        collectionBasic.showsHorizontalScrollIndicator = false
        collectionBasic.showsVerticalScrollIndicator = false
        collectionBasic.bounces = false
        
        return collectionBasic
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionBasic)
        collectionBasic.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        collectionBasic.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        collectionBasic.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        collectionBasic.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        collectionBasic.delegate = self
        collectionBasic.dataSource = self

        
    }
}
extension ViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tes1", for: indexPath) as! cellCollectionView
       
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 100)
    }
}
