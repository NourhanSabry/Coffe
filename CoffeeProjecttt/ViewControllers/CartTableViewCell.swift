//
//  CartTableViewCell.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//

import UIKit

struct CoffeeModel {
   var image: UIImage
    var price: Double
    var name: String
}

class CartTableViewCell: UITableViewCell {
    
    var test7: Products?
    @IBOutlet weak var coffeeImage: UIImageView!
    
    @IBOutlet weak var coffeeName: UILabel!
    
    @IBOutlet weak var coffeeCount: UILabel!
    
    
    @IBOutlet weak var coffeePrice: UILabel!
    
    
    @IBOutlet weak var plus: UIButton!
    
    
    @IBOutlet weak var minus: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        coffeeImage.layer.cornerRadius = 20
        
       
    
    }
    @IBAction func Minuss(_ sender: Any) {
        
        var n = Int(coffeeCount.text!) ?? -1
        if(n >= 1){
            n = n - 1
            coffeeCount.text = String(n)
            
    }
    }
    @IBAction func Pluss(_ sender: Any) {
        
        var n = Int(coffeeCount.text!) ?? -1
        if(n >= 0){
            n = n + 1
            coffeeCount.text = String(n)
        
    }
    }
    func setupCell(Model: Products){
        
        coffeeImage.image = Model.image as! UIImage
        coffeeName.text = Model.name
        coffeePrice.text = String(Model.price)
        coffeeCount.text = String(Model.itemsBought)
        
       
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
