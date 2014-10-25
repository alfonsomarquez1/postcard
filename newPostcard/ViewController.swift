//
//  ViewController.swift
//  newPostcard
//
//  Created by Luis Alfonso Marquez Lecona on 10/25/14.
//  Copyright (c) 2014 Softclick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailTouchUpInside(sender: UIButton) {
        //Comment
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        messageLabel.text = messageTextField.text
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

