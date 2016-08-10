//
//  ViewController.swift
//  Multiples_app_new
//
//  Created by Saumya Raval on 8/4/16.
//  Copyright © 2016 Saumya Raval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxmultiple = 0
    var sum = 0
    var multiplier = 0
    var mult = 0

    @IBOutlet weak var multipleIcon: UIImageView!
    @IBOutlet weak var InputNumber:	UITextField!
    @IBOutlet weak var PlayBtn: UIButton!

    @IBOutlet weak var EquationText: UILabel!
    @IBOutlet weak var AddBtn: UIButton!

    @IBAction func onPlayButtonPress(sender: UIButton!)  {
        
        if InputNumber.text != nil && InputNumber.text != "" {
            
            multipleIcon.hidden = true
            InputNumber.hidden = true
            PlayBtn.hidden = true
            
            EquationText.hidden = false
            AddBtn.hidden = false
            
            multiplier = Int(InputNumber.text!)!
            sum = mult + multiplier
        }
    }
    
    @IBAction func onAddButtonPress(sender: UIButton!) {
        //EquationText.text = "\(mult) plus \(multiplier) eq \(sum)"
        if maxmultiple < 10 {
            updatelbl()
        } else {
            restartgame()            
        }
    }
    
    func updatelbl() {
        mult = maxmultiple * multiplier
        sum = mult + multiplier
        EquationText.text = "\(mult) + \(multiplier) = \(sum)"
        maxmultiple += 1
    }
    
    func restartgame() {
        InputNumber.text = ""
        
        sum = 0
        multiplier = 0
        mult = 0
        
        multipleIcon.hidden = false
        InputNumber.hidden = false
        PlayBtn.hidden = false
        
        EquationText.hidden = true
        AddBtn.hidden = true
        
    }
}

