//
//  ViewControllerProfile.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerProfile: UIViewController {

    @IBOutlet weak var profEmail: UILabel!
    @IBOutlet weak var profUsername: UILabel!
    @IBOutlet weak var profName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testt = users[users.endIndex - 1]
        
        profEmail.text = testt.email
        profName.text = testt.name
        profUsername.text = testt.name

      
    }
    

  

}
