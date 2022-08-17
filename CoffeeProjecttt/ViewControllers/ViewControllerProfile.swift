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
        
       //let testt = users[users.endIndex]
        
        var user = NSEntityDescription.entity(forEntityName: "Users",
            in: context)!
        var testt = Users(entity: user, insertInto:nil)
        
        profEmail.text = testt.email
        profName.text = testt.name
        profUsername.text = testt.name

      
    }
    
    @IBAction func logOut(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
                           let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
                    
                    self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
  

}
