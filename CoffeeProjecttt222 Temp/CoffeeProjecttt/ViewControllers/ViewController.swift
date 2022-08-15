//
//  ViewController.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnGo.layer.cornerRadius = 49
    }
    
    @IBAction func GO(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
        
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    

}

