//
//  ViewController.swift
//  7.UIProgressView
//
//  Created by Huy on 3/12/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var progressView: UIStackView!
    @IBOutlet weak var LabelProgress: UILabel!
   
    @IBOutlet weak var progress: UIProgressView!
    
   
    
    let maxTime = 3.0 // thoi gian lon nhat
    var currentTime = 0.0 // thoi gian bat dau
    let TimerRefresh = 0.03 // sau moi thoi gian reset mot lan
    var mytimer : Timer?
     @IBOutlet weak var buttonStart: UIButton!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.setProgress(0.0, animated: true)
    }

    @IBAction func actionstat(_ sender: Any) {
        guard mytimer == nil else { return }
        mytimer?.invalidate()
        mytimer = Timer.scheduledTimer(timeInterval: TimerRefresh, target: self, selector: #selector(update(sender:)), userInfo: nil, repeats: true)
        
        // timeinterval :sau moi thoi gian TimerRefresh thi lai xoa bo goi lai 1 chinh no self
        
    }
    @objc func update(sender : Timer){
        if (currentTime < maxTime){
            currentTime = currentTime + TimerRefresh
            progress?.progress = Float(currentTime / maxTime)
            LabelProgress?.text = "\(Int(currentTime * 100/maxTime)) %"
        } else {
            currentTime = 0.0
            // dung timer lai
            mytimer?.invalidate()
            mytimer = nil
        }
    }
    
}

