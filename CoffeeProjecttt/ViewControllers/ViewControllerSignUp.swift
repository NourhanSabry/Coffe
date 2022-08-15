//
//  ViewControllerSignUp.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerSignUp: UIViewController {

    @IBOutlet weak var signupp: UIButton!
    @IBOutlet weak var signin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        signupp.layer.cornerRadius = 10    }
    

    @IBAction func signin(_ sender: Any) {
   
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    
    }
    
}
