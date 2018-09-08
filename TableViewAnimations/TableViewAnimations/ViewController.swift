//
//  ViewController.swift
//  TableViewAnimations
//
//  Created by Caston  Boyd on 9/7/18.
//  Copyright © 2018 Caston  Boyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationButton1: NSLayoutConstraint!
    
    @IBOutlet weak var animationButton2: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        animationButton1.constant -= view.bounds.width
        animationButton2.constant -= view.bounds.width
       
}
    
    var animationPerformedOnce = false
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce {
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseInOut, animations: {
            self.animationButton1.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
            self.animationButton2.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
            
            animationPerformedOnce = true
        }
        
    }

}
