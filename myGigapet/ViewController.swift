//
//  ViewController.swift
//  myGigapet
//
//  Created by Junior Samaroo on 2016-03-20.
//  Copyright © 2016 Junior Samaroo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var heartImg: DragImg!
    @IBOutlet weak var foodImg: DragImg!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var imgArray = [UIImage]()
        // ... is closed range operator
        for x in 1...4 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I touch the screen")
    }
    
    

}

