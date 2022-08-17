//
//  ViewControllerdetails.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/14/22.
//

import UIKit

class ViewControllerdetails: UIViewController {
    var dataController: NavigationProtocal!
    var coffff: Coffee?
    var test3: Products?
    
    @IBOutlet weak var addToCart: UIButton!
    
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
        
        addToCart.layer.cornerRadius = 25
//Data passing with outlets
        name2.text = coffff?.name
        img3.image = coffff?.photo
        do{
            let allProducts:[Products] = try context.fetch(Products.fetchRequest())

        for product in allProducts {
            if(name2.text == product.name){
                price2.text = String(product.price)
                break
            }
            
        }
    
    }
        catch{
            
        }
    }
    

    
    


    @IBAction func minus2(_ sender: Any) {
        var n = Int(count2.text!) ?? -1
        if(n >= 1){
            n = n - 1
            count2.text = String(n)
            var p = Double(price2.text!) ?? -1
             p = p * Double(n)
             TotalPrice.text = String(p)        }
        
        }
    

    @IBAction func plus2(_ sender: Any) {
        
        var n = Int(count2.text!) ?? -1
        if(n >= 0){
            n = n + 1
            count2.text = String(n)
            var p = Double(price2.text!) ?? -1
            p = p * Double(n)
            TotalPrice.text = String(p)
        }
        
     
    }
    
    
    
    @IBAction func small1(_ sender: Any) {
        
        btn1.isSelected = true
        btn2.isSelected = false
        btn3.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
         p = p + 2
         TotalPrice.text = String(p)
    }
    
    @IBAction func medium(_ sender: Any) {
        
        btn1.isSelected = false
        btn2.isSelected = true
        btn3.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 4
        TotalPrice.text = String(p)    }
    
    @IBAction func large(_ sender: Any) {
        
        btn1.isSelected = false
        btn2.isSelected = false
        btn3.isSelected = true
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 6
        TotalPrice.text = String(p)    }
    
    @IBAction func nosug(_ sender: Any) {
        
        btn4.isSelected = true
        btn5.isSelected = false
        btn6.isSelected = false
        btn7.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 0
        TotalPrice.text = String(p)    }
    
    @IBAction func sug(_ sender: Any) {
        
        btn4.isSelected = false
        btn5.isSelected = true
        btn6.isSelected = false
        btn7.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 2
        TotalPrice.text = String(p)    }
    
    @IBAction func sug2(_ sender: Any) {
        
        btn4.isSelected = false
        btn5.isSelected = false
        btn6.isSelected = true
        btn7.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 4
        TotalPrice.text = String(p)    }
    
    
    @IBAction func sug3(_ sender: Any) {
        btn4.isSelected = false
        btn5.isSelected = false
        btn6.isSelected = false
        btn7.isSelected = true
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 6
        TotalPrice.text = String(p)
    }
    
    @IBAction func crean(_ sender: Any) {
        btn8.isSelected = true
        btn9.isSelected = false
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 6
        TotalPrice.text = String(p)            }
    
    
    @IBAction func ice(_ sender: Any) {
        btn8.isSelected = false
        btn9.isSelected = true
        
        var p = Double(TotalPrice.text!) ?? -1
        p = p + 4
        TotalPrice.text = String(p)
        
    }
    
    
    @IBAction func cart(_ sender: Any) {
         dataController.update()
        
        do{
            let allProducts:[Products] = try context.fetch(Products.fetchRequest())

        for product in allProducts {
            if (name2.text == product.name){
                product.isAddedToCart = true
               var nn = Int(count2.text!) ?? -1
               product.itemsBought = Int32(nn)
        }
    
    }
        }
        catch{
            
        }
        
   /*     for test3 in products{
            if (name2.text == test3.name){
                test3.isAddedToCart = true
               var nn = Int(count2.text!) ?? -1
               test3.itemsBought = Int32(nn)
                
                
            }
        }*/
        
        
    }
        
        
        
        
        
        
        //update change logic
    /*    let item = self.coffff
        let storyboard = UIStoryboard(name: "cart", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "CartViewController") as! CartViewController */
        
    //    vc.coffff = item
    //    vc.dataController = self
    //    self.present(vc, animated: true, completion: nil)
        
        
            
}

