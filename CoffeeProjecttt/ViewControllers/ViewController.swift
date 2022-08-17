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
        
       /* if UserDefaults.standard.bool(forKey: "username") == true{
            
            let storyboard = UIStoryboard(name: "menu", bundle: nil)
                                let menuVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                         
                         self.navigationController?.pushViewController(menuVC, animated: false)
        } */   }
    
    @IBAction func GO(_ sender: Any) {
        
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
                   let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
            
            self.navigationController?.pushViewController(loginVC, animated: true)
        
        
        
        
   

}

}
