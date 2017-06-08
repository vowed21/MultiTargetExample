//
//  MainViewController.swift
//  RedApp
//
//  Created by HyunWoo Kim on 2017. 6. 7..
//  Copyright © 2017년 KokohApps.com. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.button.backgroundColor = AppManager.themeColor
        
        switch AppManager.currentAppType! {
        case .RedApp:
            self.button.setTitle("빨간버튼", for: .normal)
        case .BlueApp:
            self.button.setTitle("파란버튼", for: .normal)
        }
    }

    
    @IBAction func clickButton(_ sender: Any) {
        
        if AppManager.currentAppType == .RedApp {
            alert(message: "난 RedApp")
        }
        else if AppManager.currentAppType == .BlueApp {
            alert(message: "난 BlueApp 이다.")
        }
    }
    
    
    private func alert(message: String){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
