//
//  ViewController.swift
//  MindPower
//
//  Created by Carlos Herrera Somet on 15/07/16.
//  Copyright © 2016 Carlos H Somet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var initialText: UILabel!
    @IBOutlet var initialImage: UIImageView!
    @IBOutlet var questionText: UILabel!
    
    let manager = ImageManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionText.text = "Is the following image...\( manager.getRandomQuestion())?"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    

    @IBAction func didTapYes(sender: UIButton) {
    
        hideInitialElements()
        backgroundImage.image = manager.getRandomImage()
        questionText.text = "Is the following image...\(manager.getRandomQuestion())?"
        
        
        
    }

    @IBAction func didTapNo(sender: UIButton) {
      
        hideInitialElements()
        backgroundImage.image = manager.getRandomImage()
        questionText.text = "Is the following image...\(manager.getRandomQuestion())?"
    }
    
    
    
    //Will clear initial brain image and the text just below to show the image we are guessing.
    
    func hideInitialElements(){
        if !initialText.hidden && !initialImage.hidden{
            initialImage.hidden = true
            initialText.hidden  = true
            backgroundImage.hidden = false
        }
        
    }
    
    
  
    
    
}

