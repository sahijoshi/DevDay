//
//  ViewController.swift
//  VSAppCenter
//
//  Created by skj on 21.5.2021.
//

import UIKit
import AppCenter
import AppCenterCrashes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppCenter.start(withAppSecret: "1b30ac2b-a78f-4c74-bcc4-173797647608", services:[
          Crashes.self
        ])
        
        
    }
    
    @IBAction func crashAction(_ sender: Any) {
        crash()
    }
    
    func crash() {
        fatalError()
    }

}

