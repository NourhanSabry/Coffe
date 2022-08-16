//
//  ViewControllerSignUp.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerSignUp: UIViewController {
    
   // var users: [Users] = []
   // var id = 0
    
   // let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var confirmtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var usernametxt: UITextField!
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
   
    
    @IBAction func signUP(_ sender: Any) {
        if(usernametxt.text == "" || passwordtxt.text == "" || emailtxt.text == "" || confirmtxt.text == ""){
            let alert = UIAlertController(title: "Alert", message: "Please enter missing fields", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            
            present(alert, animated: true, completion: nil)
        }
        else{
            
            if(confirmtxt.text != passwordtxt.text){
                let alert = UIAlertController(title: "Alert", message: "Passwords do not match", preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alert.addAction(ok)
                
                present(alert, animated: true, completion: nil)            }
            
           
        }
        let item = Users(context: context)
        item.name = usernametxt.text
        item.email = emailtxt.text
        item.password = passwordtxt.text
        users.append(item)
        item.id = Int32(users.endIndex)

        
        do{
            try context.save()
            //print(item.id)
        }
        catch{
            
        }
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
               let logVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
        
        self.navigationController?.pushViewController(logVC, animated: true)
        
    }
}
