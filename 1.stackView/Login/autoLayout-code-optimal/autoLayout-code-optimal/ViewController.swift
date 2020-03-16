//
//  ViewController.swift
//  autolayoutCode
//
//  Created by Huy on 3/2/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var mainView : UIStackView = UIStackView()
    var stackView1 : UIStackView = UIStackView()
    var image1 : UIImageView = UIImageView()
    var stackView11 : UIStackView = UIStackView()
    var stackView12 : UIStackView = UIStackView()
    // optimal code staclView11
    var LaybelFirst : UILabel?
    var LaybelMiddle : UILabel?
    var LabelLast : UILabel?
        
    var textView1 : UITextView = UITextView()
    var stackButton : UIStackView = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        self.setupStackView1()
        self.setupTextView()
        self.setupButtoon()
    }
private func setupLayout(){
    view.addSubview(mainView)
    mainView.translatesAutoresizingMaskIntoConstraints = false
    mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(UIDevice.setSize(iPhone: 20, iPad: 30))).isActive = true
    mainView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: CGFloat(UIDevice.setSize(iPhone: 10, iPad: 20))).isActive = true
    mainView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: CGFloat(-UIDevice.setSize(iPhone: 10, iPad: 20))).isActive = true
    mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -CGFloat(UIDevice.setSize(iPhone: 10, iPad: 20))).isActive = true
    mainView.axis = .vertical
    mainView.alignment = .fill
    mainView.distribution = .fill
//    mainView.backgroundColor = .brown
    mainView.spacing = 10
    
    
    }
    private func setupStackView1(){
        mainView.addArrangedSubview(stackView1)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.heightAnchor.constraint(equalToConstant: CGFloat(UIDevice.setSize(iPhone: 100, iPad: 200))).isActive = true
        stackView1.axis = .horizontal
        stackView1.alignment = .fill
        stackView1.distribution = .fill
        stackView1.spacing = 10
        // image
        stackView1.addArrangedSubview(image1)
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.image = UIImage.init(named: "cho3")
        image1.heightAnchor.constraint(equalTo: image1.widthAnchor, multiplier: 1).isActive = true
        image1.widthAnchor.constraint(equalToConstant: CGFloat(UIDevice.setSize(iPhone: 100, iPad: 200))).isActive = true
        // stackview11
        stackView1.addArrangedSubview(stackView11)
        stackView11.translatesAutoresizingMaskIntoConstraints = false
        stackView11.axis = .vertical
        stackView11.alignment = .leading
        stackView11.distribution = .equalCentering
        stackView11.spacing = 10
        stackView11.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
//        var labelFirst = UILabel()
//        labelFirst.translatesAutoresizingMaskIntoConstraints = false
//        labelFirst.text = "First"
//        labelFirst.textAlignment = .left
//        labelFirst.font = .boldSystemFont(ofSize: 15)
//        stackView11.addArrangedSubview(labelFirst)
        // dung huong doi tuong rut ngan code
          LaybelFirst = UILabel(text: "First", fontSize: 15, parentStackView: stackView11)
         LaybelMiddle = UILabel(text: "Middle", fontSize: 15, parentStackView: stackView11)
         LabelLast = UILabel(text: "Last", fontSize: 15, parentStackView: stackView11)
        
//        var labelMiddle = UILabel()
//        labelMiddle.translatesAutoresizingMaskIntoConstraints = false
//        labelMiddle.text = "Middle"
//        labelFirst.textAlignment = .left
//        labelFirst.font = .boldSystemFont(ofSize: 15)
//        stackView11.addArrangedSubview(labelMiddle)
//
//        var labelLast = UILabel()
//        labelLast.translatesAutoresizingMaskIntoConstraints = false
//        labelLast.text = "Last"
//        labelFirst.textAlignment = .left
//        labelFirst.font = .boldSystemFont(ofSize: 15)
//        stackView11.addArrangedSubview(labelLast)
        
        // stack12
        stackView1.addArrangedSubview(stackView12)
        stackView12.translatesAutoresizingMaskIntoConstraints = false
        stackView12.axis = .vertical
        stackView12.alignment = .fill
        stackView12.distribution = .equalSpacing
        
//        stackView12.spacing = 10
        
//        var textFirst = UITextField()
//        textFirst.translatesAutoresizingMaskIntoConstraints = false
//        textFirst.placeholder = "First"
//        textFirst.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(textFirst)
//
//        var textMiddle = UITextField()
//        textMiddle.translatesAutoresizingMaskIntoConstraints = false
//        textMiddle.placeholder = "Middle"
//        textMiddle.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(textMiddle)
//
//        var textLast = UITextField()
//        textLast.translatesAutoresizingMaskIntoConstraints = false
//        textLast.placeholder = "Last"
//        textLast.borderStyle = .roundedRect
//        stackView12.addArrangedSubview(textLast)
        
        let textFirst = UITextField(placehoder: "First", borderStyle: .roundedRect, parentStack: stackView12)
        let textMiddle = UITextField(placehoder: "Middle", borderStyle: .roundedRect, parentStack: stackView12)
        let textLast = UITextField(placehoder: "Last", borderStyle: .roundedRect, parentStack: stackView12)
        
        
    
  
    }
    private func setupTextView(){
        mainView.addArrangedSubview(textView1)
        textView1.translatesAutoresizingMaskIntoConstraints = false
        textView1.text = "your tiltle ........"
        textView1.backgroundColor = .blue
        textView1.font = .boldSystemFont(ofSize: 15)
    }
    private func setupButtoon(){
        mainView.addArrangedSubview(stackButton)
        stackButton.translatesAutoresizingMaskIntoConstraints = false
        stackButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackButton.axis = .horizontal
        stackButton.alignment = .fill
        stackButton.distribution = .fillEqually
        stackButton.spacing = 10
        
        //cancel - save - clear
        
        var butCancel = UIButton()
        butCancel.translatesAutoresizingMaskIntoConstraints = false
        butCancel.setTitle("Cancel", for: .normal)
        butCancel.backgroundColor = .black
        stackButton.addArrangedSubview(butCancel)
        
        var butSave = UIButton()
        butSave.translatesAutoresizingMaskIntoConstraints = false
        butSave.setTitle("Save", for: .normal)
            butSave.backgroundColor = .black
        stackButton.addArrangedSubview(butSave)
        
        var butClear = UIButton()
        butClear.translatesAutoresizingMaskIntoConstraints = false
        butClear.setTitle("Clear", for: .normal)
        butClear.backgroundColor = .black
        stackButton.addArrangedSubview(butClear)
        
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        mainView.changeColorView(color: .brown)
////        stackView1.changeColorView(color: .red)
//        stackButton.changeColorView(color: .green)
//    }

}

