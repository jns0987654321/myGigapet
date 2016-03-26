//
//  MonsterImg.swift
//  myGigapet
//
//  Created by Junior Samaroo on 2016-03-26.
//  Copyright © 2016 Junior Samaroo. All rights reserved.
//

import Foundation
import UIKit //needed for subclassing UIImageView

class MonsterImg: UIImageView {
    
    //Required init for UIView subclassing
    //Override init of ImageVIew then call super view
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    //Required init for UIView subclassing
    //Override init of ImageVIew then call super view
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        // ... is closed range operator swift 2.2/3.0 loop
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0 //infinite
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        // ... is closed range operator
        for x in 1...5 {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}

