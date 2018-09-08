//
//  ButtonViewController.swift
//  TableViewAnimations
//
//  Created by Caston  Boyd on 9/7/18.
//  Copyright © 2018 Caston  Boyd. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    
    @IBOutlet weak var bouncyButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func bounce(_ sender: Any) {
        let button = sender as! UIButton
        
        let bounds = button.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            button.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
        }) { (success: Bool) in
            if success {
                
                UIView.animate(withDuration: 1, animations: {
                    button.bounds = bounds
                })
                
                button.bounds = bounds
                
            }
            
            
        }
        
    }
    
}
