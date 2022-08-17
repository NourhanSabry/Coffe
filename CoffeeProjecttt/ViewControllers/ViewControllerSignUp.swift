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
        hideKeyboardWhenTappedAround()
        signupp.layer.cornerRadius = 10    }
    
    @objc func handleTap()
        {
            passwordtxt.resignFirstResponder()
            emailtxt.resignFirstResponder()
        }
       
        func signUp()
        {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newUser = Users(context: context)
            if(passwordtxt.text == "" || usernametxt.text == "" || emailtxt.text == "" || confirmtxt.text == ""){
                let alert = UIAlertController(title: "Alert", message: "Please enter missing fields", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "Ok", style: .cancel)
                alert.addAction(cancelAction)
                self.present(alert, animated: true, completion: nil)}
            else{
                
            if(passwordtxt.text != confirmtxt.text)
            {
                let alert = UIAlertController(title: "Alert", message: "Passwords do not match", preferredStyle: .alert)
                let cancelAction = UIAlertAction(title: "Ok", style: .cancel)
                alert.addAction(cancelAction)
                self.present(alert, animated: true, completion: nil)
            }
            else
            {
                newUser.email = emailtxt.text
                newUser.password = passwordtxt.text
                newUser.name = usernametxt.text
                users.append(newUser)
                
                let storyboard = UIStoryboard(name: "Login", bundle: nil)
                                   let logVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
                            
                            self.navigationController?.pushViewController(logVC, animated: true)

                
                do
                {
                    try context.save()
                      }
                catch
                {
                  print("coredataaaa")
                }
            }
        }
        }
        
    
    @IBAction func signup(_ sender: Any) {
        signUp()    }
    
    @IBAction func signin(_ sender: Any) {
   
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
               let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    
    }
   
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
