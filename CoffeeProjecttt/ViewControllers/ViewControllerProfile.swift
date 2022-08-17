//
//  ViewControllerProfile.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit
import CoreData

class ViewControllerProfile: UIViewController {

    @IBOutlet weak var logout: UIButton!
    @IBOutlet weak var profEmail: UILabel!
    @IBOutlet weak var profUsername: UILabel!
    @IBOutlet weak var profName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        logout.layer.cornerRadius = 25
        
       let testt = users[0]
        
     /*   var user = NSEntityDescription.entity(forEntityName: "Users",
            in: context)!
        var testt = Users(entity: user, insertInto:nil) */
        
        
        //fetch request for user at index 0 ex
        //log out deletes all users so at sign up we end wiyh 1 user at index 0
        
        
        profEmail.text = testt.email
        profName.text = testt.name
        profUsername.text = testt.name

      
    }
    
    @IBAction func logOut(_ sender: Any) {
        
        
       // users = []
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
                           let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
                    
                    self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
  

}
