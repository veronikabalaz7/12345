//
//  ViewController.swift
//  12345
//
//  Created by Veronika Balážová on 01.02.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var textInput: UITextField!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var thankYouMessage: UILabel!
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if textInput.text == "" {
            thankYouMessage.isHidden = false
            thankYouMessage.text = "Please enter your name"
            thankYouMessage.textColor = UIColor.red
            
        } else {
            thankYouMessage.isHidden = false
            thankYouMessage.text = "Thank you! Your name is \(textInput.text!)"
            thankYouMessage.textColor = UIColor.green
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thankYouMessage.isHidden = true

        
        self.textInput.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           self.view.endEditing(true)
           return false
       }
    
    
    //hiding placeholder once editing starts
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
      //  textField.delegate = self
        
        if textInput.isFirstResponder == true {
            textInput.placeholder = nil
        }
        
    
    }
    
    
       


}


