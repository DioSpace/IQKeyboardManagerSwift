//
//  HomeViewController.swift
//  TestKeyBoard
//
//  Created by Geek on 2020/1/1.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        IQKeyboardManager.shared.enable = true
    }
    
    @IBAction func jumpAction(_ sender: UIButton) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(identifier: "viewcontroller") as? ViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
}
