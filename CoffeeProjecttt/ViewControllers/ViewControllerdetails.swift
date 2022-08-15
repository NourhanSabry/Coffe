//
//  ViewControllerdetails.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerdetails: UIViewController {
    
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var TotalPrice: UILabel!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    
    @IBOutlet weak var btn5: UIButton!
    
    
    @IBOutlet weak var btn6: UIButton!
    
    
    @IBOutlet weak var btn7: UIButton!
    
    
    @IBOutlet weak var btn8: UIButton!
    
    
    @IBOutlet weak var btn9: UIButton!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var price2: UILabel!
    
    @IBOutlet weak var count2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func minus2(_ sender: Any) {
        var n = Int(count2.text!) ?? -1
        if(n >= 1){
            n = n - 1
            count2.text = String(n)
        }
        var t = Int(TotalPrice.text!) ?? -1
         //t = t -
         //TotalPrice.text = String(t)
        }
    

    @IBAction func plus2(_ sender: Any) {
        
        var n = Int(count2.text!) ?? -1
        if(n >= 0){
            n = n + 1
            count2.text = String(n)
            
        }
        
       var p = Int(price2.text!) ?? -1
        p = p * n
        TotalPrice.text = String(p)
    }
    
    
    
    @IBAction func small1(_ sender: Any) {
        
        btn1.isSelected = true
        btn2.isSelected = false
        btn3.isSelected = false
    }
    
    @IBAction func medium(_ sender: Any) {
        
        btn1.isSelected = false
        btn2.isSelected = true
        btn3.isSelected = false    }
    
    @IBAction func large(_ sender: Any) {
        
        btn1.isSelected = false
        btn2.isSelected = false
        btn3.isSelected = true    }
    
    @IBAction func nosug(_ sender: Any) {
        
        btn4.isSelected = true
        btn5.isSelected = false
        btn6.isSelected = false
        btn7.isSelected = false     }
    
    @IBAction func sug(_ sender: Any) {
        
        btn4.isSelected = false
        btn5.isSelected = true
        btn6.isSelected = false
        btn7.isSelected = false     }
    
    @IBAction func sug2(_ sender: Any) {
        
        btn4.isSelected = false
        btn5.isSelected = false
        btn6.isSelected = true
        btn7.isSelected = false     }
    
    
    @IBAction func sug3(_ sender: Any) {
        btn4.isSelected = false
        btn5.isSelected = false
        btn6.isSelected = false
        btn7.isSelected = true
        
    }
    
    @IBAction func crean(_ sender: Any) {
        btn8.isSelected = true
        btn9.isSelected = false
            }
    
    
    @IBAction func ice(_ sender: Any) {
        btn8.isSelected = false
        btn9.isSelected = true
    }
    
    
    @IBAction func cart(_ sender: Any) {
    }
    
    
    
}
