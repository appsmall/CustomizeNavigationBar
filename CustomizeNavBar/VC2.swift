//
//  VC2.swift
//  CustomizeNavBar
//
//  Created by apple on 29/05/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    
    struct Storyboard {
        static let VC2ToVC3 = "VC2ToVC3"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: Storyboard.VC2ToVC3, sender: nil)
    }
    
}
