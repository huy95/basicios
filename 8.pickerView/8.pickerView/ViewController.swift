//
//  ViewController.swift
//  8.pickerView
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    let picker : UIPickerView = {
//       let picker = UIPickerView()
//        picker.translatesAutoresizingMaskIntoConstraints = false
//        return picker
//    }()
//    let button : UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .red
//        button.setTitle("kieu nhan", for: .normal)
//        return button
//    }()
    
    
    @IBOutlet weak var picker: UILabel!
    // khai bao uipicker
    @IBOutlet weak var pickerView: UIPickerView!
    // khai bao mang
    let flower = ["Rose", "Holly", "jasmine", "Daisy", "Alyssum", "violet"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1 khai bao protocol datasoure va delegate
        pickerView.dataSource = self
        pickerView.delegate = self
        //* tao hieu ung cho cho row
        pickerView?.selectRow(flower.count / 2, inComponent: 0, animated: true)
        
    }
    


}
// khai bao protocol
extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    // protocol DataSoure
    // tao may hang nut nha
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    // so hang trong 1 cot
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return flower.count
    }
    // protocol datadelegate
    // chieu cao
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    //
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return flower[row]
    }
    // click chon
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        picker.text = flower[row]
    }
    
}
