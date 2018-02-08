//
//  ViewController.swift
//  Day - 9 Tumblr Menu
//
//  Created by Prashant Gaikwad on 2/8/18.
//  Copyright © 2018 Prashant Gaikwad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showHideButton: UIButton!
    
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var leftView: UIView!
    
    @IBOutlet weak var rightViewTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var backAlphaView: UIView!
    @IBOutlet weak var leftViewLeadingConstraint: NSLayoutConstraint!
    
    var menuShowing: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.leftView.frame.origin.x = -163
        self.rightView.frame.origin.x = self.rightView.frame.origin.x + 163 + 16
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showHideMenuOptionsAction(_ sender: Any) {
        
        if menuShowing {
            menuShowing = false
            showHideButton.setTitle("SHOW", for: .normal)
            self.backAlphaView.alpha = 0.0
            UIView.animate(withDuration: 0.5, animations: {
                self.leftView.frame.origin.x = -163
                self.rightView.frame.origin.x = self.rightView.frame.origin.x + 163 + 16
            })
            
        }
        else{
            menuShowing = true
            showHideButton.setTitle("HIDE", for: .normal)
            self.backAlphaView.alpha = 0.4
            UIView.animate(withDuration: 0.5, animations: {
                self.leftView.frame.origin.x = 16
                self.rightView.frame.origin.x = self.view.frame.width - ( 163 + 16 )
            })
            
        }
        
        
        
        
    }
    


}

