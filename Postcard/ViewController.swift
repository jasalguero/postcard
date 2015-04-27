//
//  ViewController.swift
//  Postcard
//
//  Created by Jose Salguero on 21/04/15.
//  Copyright (c) 2015 Jose Salguero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var messageInput: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSendMail(sender: UIButton) {
        sendMailButton.setTitle("Mail Sent!", forState: UIControlState.Normal);
    }
    
    func checkButtonState() {
        if (nameLabel.text?.isEmpty == true || messageLabel.text?.isEmpty == true) {
            sendMailButton.enabled = false;
        } else {
            sendMailButton.enabled = true;
        }
    }

    @IBAction func handleNameChanged(sender: UITextField) {
        nameLabel.hidden = sender.text.isEmpty;
        nameLabel.text = sender.text;
        
        checkButtonState();
        
    }
    
    @IBAction func handleMessageChanged(sender: UITextField) {
        messageLabel.hidden = sender.text.isEmpty;
        messageLabel.text = sender.text;
        
        checkButtonState();
    }
    
}

