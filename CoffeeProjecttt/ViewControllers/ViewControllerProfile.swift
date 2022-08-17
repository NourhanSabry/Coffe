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
        
       //let testt = users[0]
        getUserID()
        
        
        
     /*   var user = NSEntityDescription.entity(forEntityName: "Users",
            in: context)!
        var testt = Users(entity: user, insertInto:nil) */
        
        
        //fetch request for user at index 0 ex
        //log out deletes all users so at sign up we end wiyh 1 user at index 0
        
        
       
      
    }
    
    public func getUserID()
        {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            do
            {
                let defaults = UserDefaults.standard
                
                
                let name = defaults.string(forKey: "username")
                let predict = NSPredicate(format: "name = %@", name ?? "")
                let req: NSFetchRequest<Users> = Users.fetchRequest()
                req.predicate = predict
                let users2 = try context.fetch(req)
                for user in users2
                {
                    profEmail.text = user.email
                    profName.text = user.name
                    profUsername.text = user.name
                    print(user.id)
                }
            } catch
            {
                print("An error has occured")
                
            }
        }
    @IBAction func logOut(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.setValue(nil, forKey: "username")

        do{
            let allProducts:[Products] = try context.fetch(Products.fetchRequest())

        for product in allProducts {
            context.delete(product)
             do {
             try context.save()
             } catch {
             
             }
    }
        }
        catch{
            
        }
       
       // users = []
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
                           let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerLogin") as! ViewControllerLogin
                    
                    self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
  

}
