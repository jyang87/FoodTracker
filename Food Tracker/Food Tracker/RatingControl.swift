//
//  RatingControl.swift
//  Food Tracker
//
//  Created by JiangYang on 2018/5/20.
//  Copyright © 2018年 edu.self. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
        
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0){
        didSet{
            setupButton()
        }
    }
    @IBInspectable var starCount: Int = 5{
        didSet{
            setupButton()
        }
    }
    
    var rating = 0

   //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init(coder: NSCoder) {
        super.init(coder:coder)
        setupButton()
    }
    
    //MARK: Action
    @objc func ratingButtonTapped(button:UIButton){
        print("Button pressed 👍" + "20123")
    }
        
    
    
    //MARK: Private Methods
    private func setupButton(){
        // clear any existing buttons
        for button in ratingButtons{
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        // Setup the button action
        for _ in 1...starCount  {
            //Create button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            //Add constraints
            button.translatesAutoresizingMaskIntoConstraints = true
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            
            button.addTarget(self, action: #selector(ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
            
        }
    }
}
