//
//  ViewControllerLogin.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var passwordTxT: UITextField!
    @IBOutlet weak var usernameTxT: UITextField!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.layer.cornerRadius = 140
        login.layer.cornerRadius = 10    }
    
    @IBAction func login(_ sender: Any) {
        let test = users[users.endIndex - 1]
        
        if(test.name != usernameTxT.text || test.password != passwordTxT.text){
            
            let alert = UIAlertController(title: "Alert", message: "Wrong username or password", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            present(alert, animated: true, completion: nil)
        }
        else{
            let storyboard = UIStoryboard(name: "menu", bundle: nil)
                   let menuVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            
            self.navigationController?.pushViewController(menuVC, animated: true)
            
        }
        
        
        
    }
    
 
   
    @IBAction func signup(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "register", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerSignUp") as! ViewControllerSignUp
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
}
