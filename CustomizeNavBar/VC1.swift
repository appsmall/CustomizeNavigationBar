
//
//  VC1.swift
//  CustomizeNavBar
//
//  Created by apple on 29/05/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class VC1: UIViewController {
    
    struct Storyboard {
        static let VC1ToVC2 = "VC1ToVC2"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        setCustomBackImage()
        setCustomTitle()
    }
    
    func setCustomBackImage() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back To", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem?.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Impact", size: 20)], for: .normal)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "back")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "back")
    }
    
    func setCustomTitle() {
        let label1 = UILabel()
        label1.text = "View "
        label1.font = UIFont(name: "Impact", size: 26)
        label1.textColor = UIColor.white
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.text = "Controller 1"
        label2.font = UIFont(name: "Impact", size: 26)
        label2.textColor = UIColor.white
        label2.sizeToFit()
        
        let stackView = UIStackView(arrangedSubviews: [label1, label2])
        stackView.axis = .horizontal
        stackView.frame.size.width = label1.frame.width + label2.frame.width
        stackView.frame.size.height = max(label1.frame.height, label2.frame.height)
        
        navigationItem.titleView = stackView
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: Storyboard.VC1ToVC2, sender: nil)
    }

}
