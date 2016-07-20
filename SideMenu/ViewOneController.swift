//
//  ViewController.swift
//  SideMenu
//
//  Created by Vladimir S. Kiryakov on 20.07.16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit
import SWRevealViewController

class ViewOneController: UIViewController {
    
    @IBOutlet weak var hamburgerButton: UIBarButtonItem!

//    var revealViewController: SWRevealViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
                        hamburgerButton.target = self.revealViewController()
                        hamburgerButton.action = #selector(SWRevealViewController.revealToggle)
                        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

