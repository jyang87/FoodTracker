//
//  ViewController.swift
//  FoodTracker(Sep)
//
//  Created by JiangYang on 2018/9/29.
//  Copyright © 2018 edu.self. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    //MARK: Properties
   
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var iOSVersion: UILabel!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       nameTextField.delegate = self
    }
 //MARK: Action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
        
        let sysdate = NSDate()
        let timeDateFormate = DateFormatter()
        timeDateFormate.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let strDate = timeDateFormate.string(from: sysdate as Date)
        
        let iosVersion = UIDevice.current.systemVersion 
        
        timeLabel.text = strDate
        iOSVersion.text = "iOS Version : " + iosVersion
    }
    
    //MARK: TextDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
       
        return textField.resignFirstResponder()
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = nameTextField.text
    }
}

