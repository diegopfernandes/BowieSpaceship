//
//  ViewController.swift
//  BowieSpaceship
//
//  Created by eleves on 17-12-06.
//  Copyright © 2017 eleves. All rights reserved.
//

import UIKit

//@IBOutlet pour le cannon

class ViewController: UIViewController {
    @IBOutlet weak var cannon: UIImageView!
    @IBOutlet weak var target: UIImageView!
    //target: UIVew!
    override func viewDidLoad() {
        super.viewDidLoad()
        cannon.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        if cannon.frame.intersects(target.frame) {
            cannon.alpha = 0.1
        }
        //  cannon.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        // if cannon.frame.intersects(target.frame) {
        //cannon. alpha = 0.1
        //}
    }

    @IBAction func mySlider(_ sender: UISlider) {
        cannon.transform = CGAffineTransform(rotationAngle:CGFloat(sender.value))
    }
    //fonction pour le slider (mySlider)
   // cannon.transform = CGAffineTransform(rotationAngle: CGFLoat(sender.value))

}

