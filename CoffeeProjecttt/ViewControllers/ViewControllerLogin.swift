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
    
    @IBAction func Details(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
               let detVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerdetails") as! ViewControllerdetails
        
        self.navigationController?.pushViewController(detVC, animated: true)
        
        
        
    }
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
            
            let item = Products(context: context)
            item.name = "Espresso"
            item.price = 30
            item.image = UIImage(named: "espresso")
            item.size = 1
            item.sugar = 0
            item.isAddedToCart = false
            item.itemsBought = 0
            item.id = 1
            products.append(item)
            
            let item2 = Products(context: context)
            item2.name = "Cappuccino"
            item2.price = 40
            item2.image = UIImage(named: "cappuccino2")
            item2.size = 1
            item2.sugar = 0
            item2.isAddedToCart = false
            item2.itemsBought = 0
            item2.id = 2
            products.append(item2)
            
            
            let item3 = Products(context: context)
            item3.name = "Macchiato"
            item3.price = 50
            item3.image = UIImage(named: "macciato")
            item3.size = 1
            item3.sugar = 0
            item3.isAddedToCart = false
            item3.itemsBought = 0
            item3.id = 3
            products.append(item3)
            
            let item4 = Products(context: context)
            item4.name = "Mocha"
            item4.price = 60
            item4.image = UIImage(named: "mocha")
            item4.size = 1
            item4.sugar = 0
            item4.isAddedToCart = false
            item4.itemsBought = 0
            item4.id = 4
            products.append(item4)
            
            let item5 = Products(context: context)
            item5.name = "Latte"
            item5.price = 35
            item5.image = UIImage(named: "latte")
            item5.size = 1
            item5.sugar = 0
            item5.isAddedToCart = false
            item5.itemsBought = 0
            item5.id = 5
            products.append(item5)
            
        }
        
        
        
    }
    
 
   
    @IBAction func signup(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "register", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerSignUp") as! ViewControllerSignUp
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
}
