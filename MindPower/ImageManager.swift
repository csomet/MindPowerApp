//
//  ImageManager.swift
//  MindPower
//  
//  Class: ImageManager -> Manage all about the random text and images that will appear in the main view.
//  
//  API methods 
//  Functions: 
//            getRandomQuestions -> will get a random question item from the questions array.
//            getRandomImage -> will get a random image from the group "Images"
//
//  Created by Carlos Herrera Somet on 15/07/16.
//  Copyright © 2016 Carlos H Somet. All rights reserved.
//

import Foundation
import UIKit


class ImageManager{
    
    var lastRandImg: Int = -1
    var lastRandQst: Int = -1
    var image: UIImage?
    let questions: [String] = [" a road", " a tree", " a lighthouse", " a car", " a statue", "a city", "a couple", " a swimming pool", "a Sushi plate", "a bike"]
   
    
    
    var totalImagesAndQuestions: Int {
        
        return questions.count
    }
    
    
    func getRandomQuestion() -> String{
        
        var n = Int(arc4random_uniform(UInt32(totalImagesAndQuestions)))
        
        //we don't want repeated questions everytime so control here just compare new value with previous.
        while n == lastRandQst{
            
            n = Int(arc4random_uniform(UInt32(totalImagesAndQuestions)))
            
        }

        lastRandQst = n
        
        
        return questions[n]
        
    }
    
    
    func getRandomImage() -> UIImage {
        
        var n = Int(arc4random_uniform(UInt32(totalImagesAndQuestions)))
        
        // we don't want to get repeated images again and again so lets control for example doing this:
        while n == lastRandImg{
            
            n = Int(arc4random_uniform(UInt32(totalImagesAndQuestions)))
            
        }
        
        lastRandImg = n
        
        //get the image itself:
        
        if let image = UIImage(named: "image\(n).jpg"){
            
            return image
        
        }else{
            
            return UIImage(named: "image0.jpg")!
        }
        
        
        
    
        
    }
    
    
    
    
    
    
    
    
    
}
