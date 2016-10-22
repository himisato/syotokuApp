//
//  ViewController.swift
//  syotokuApp
//
//  Created by Himi Sato on 2016/10/15.
//  Copyright © 2016 Himi Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var syotokuField: UITextField!
    
    @IBAction func resultButton(_ sender: UIButton) {
        let syotoku : Float = Float(self.syotokuField.text!) ?? 0
        var result : Float = 0
        if syotoku <= 180{
            
            result = syotoku * 0.4
        }
        else {
            
            result = syotoku * 0.3 + 18
        }
        
        switch syotoku {
        case (0...180):
            result = syotoku * 0.4
        case (180...360):
            result = syotoku * 0.3 + 18
        case (360...660):
            result = syotoku * 0.2 + 54
        default:
            ()
        }

        self.resultLabel.text = "\(result)"
            
        
    }

    @IBOutlet weak var resultLabel: UILabel!
}

