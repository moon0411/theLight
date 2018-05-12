//
//  ViewController.swift
//  theLight
//
//  Created by 李沐軒 on 2018/5/10.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var count = 0

    @IBAction func pressedButton(_ sender: Any) {
        count = count + 1
        let number = count % 2
        if number == 0 {
            oneImageView.isHidden = false
            bonjourLabel.isHidden = false
            twoImageView.isHidden = true
            aurevoirLabel.isHidden = true
        } else if number == 1 {
            oneImageView.isHidden = true
            bonjourLabel.isHidden = true
            twoImageView.isHidden = false
            aurevoirLabel.isHidden = false
        } else if count == 2 {
            count = 0
        }
    }
    
    @IBOutlet weak var aurevoirLabel: UILabel!
    @IBOutlet weak var bonjourLabel: UILabel!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var oneImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

