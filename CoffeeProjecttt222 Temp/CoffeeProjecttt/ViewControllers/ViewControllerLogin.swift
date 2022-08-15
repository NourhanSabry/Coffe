//
//  ViewControllerLogin.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Menu(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "menu", bundle: nil)
               let Menu = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        self.navigationController?.pushViewController(Menu, animated: true)
        
    }
    @IBAction func login(_ sender: Any) {
    }
    
 
    @IBAction func signup(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "register", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerSignUp") as! ViewControllerSignUp
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
}
