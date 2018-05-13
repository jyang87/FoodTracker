//
//  ViewController.swift
//  Food Tracker
//
//  Created by JiangYang on 2018/5/6.
//  Copyright © 2018年 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }
    /**
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = nameTextField.text
    }

    //MARK: Action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
       
        let nowDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = formatter.string(from: nowDate)
        
        date.text = dateString
        
        //mealNameLabel.text = nameTextField.text
 
    }
    
}

