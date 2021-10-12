//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김성현 on 2021/09/09.
//

import UIKit

class SuguePresentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
