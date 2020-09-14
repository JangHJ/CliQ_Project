//
//  ViewController.swift
//  CliQ
//
//  Created by SWUCOMPUTER on 2020/05/15.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.isNavigationBarHidden=true
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

