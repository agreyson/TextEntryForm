//
//  ViewController.swift
//  TextEntryForm
//
//  Created by Ann Greyson on 9/18/17.
//  Copyright © 2017 Greyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var accountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.delegate = self
        lastName.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createAccount(_ sender: Any) {
        accountLabel.text = "Hello, \(firstName.text ?? "bunny")"
    }

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case firstName:
            lastName.becomeFirstResponder()
        case lastName:
            lastName.resignFirstResponder()
        default:
            lastName.resignFirstResponder()
        }
        
        return true
    }
    
}


