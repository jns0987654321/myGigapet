//
//  DragImg.swift
//  myGigapet
//
//  Created by Junior Samaroo on 2016-03-26.
//  Copyright © 2016 Junior Samaroo. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    // x,y cocrd of point
    var originalPosition: CGPoint!
    
    //Required init for UIView subclassing
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    //Required init for UIView subclassing
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center //center of this imageview
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.locationInView(self.superview) //superview is main golem view
            self.center = CGPointMake(position.x, position.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalPosition
    }
}