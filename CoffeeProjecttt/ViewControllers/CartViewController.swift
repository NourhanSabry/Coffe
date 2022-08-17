//
//  CartViewController.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//

import UIKit



class CartViewController: UIViewController {
    var test4: Products?
    var test7: Products?
    var cartitem: Products?
    @IBOutlet weak var checkOut: UIButton!
    
    @IBOutlet weak var shipping: UILabel!
   
    
    @IBOutlet weak var subTotal: UILabel!
    
    @IBOutlet weak var TotalPrice: UILabel!
    
    @IBOutlet weak var CartTable: UITableView!
    var dataArray = [Products]()
    
    
    
    //fetched by get code from core data-->Menu
    //Cart-->Add To Cart Action arrayy=dataArray
    
    override func viewDidLoad() {
        super.viewDidLoad()

      CartTable.delegate = self
        CartTable.dataSource = self
        
        do{
            let allProducts:[Products] = try context.fetch(Products.fetchRequest())

        for product in allProducts {
            if(product.isAddedToCart == true){
                dataArray.append(product)
            }
            
        }
    
    }
        catch{
            
        }
        
        
      /*  for test4 in products{
            if (test4.isAddedToCart == true){
                dataArray.append(test4)
                
            }
            
        }*/
     /*   for test7 in products{
            if (test7.isAddedToCart == true){
                coffeeCount.text = String(test7.itemsBought)
                
            }
    }*/
      /*  dataArray.append(CoffeeModel.init(name: "Espresso",price: 22 ,image: UIImage(named: "espresso")!))
        dataArray.append(CoffeeModel.init(name: "Cappuccino",price: 40 ,image: UIImage(named: "cappuccino2")!))
        dataArray.append(CoffeeModel.init(name: "Macchiato", price:50 ,image: UIImage(named: "macciato")!))
        dataArray.append(CoffeeModel.init(name: "Mocha", price: 35 , image: UIImage(named: "mocha")!))
        dataArray.append(CoffeeModel.init(name: "Latte", price: 55 , image: UIImage(named: "latte")!)) */
        
        checkOut.layer.cornerRadius = 25
    }
    
    
    @IBAction func CheckOut(_ sender: Any) {
        dataArray.removeAll()
        CartTable.reloadData()
        
        do{
            let allProducts:[Products] = try context.fetch(Products.fetchRequest())

        for product in allProducts {
            if(product.isAddedToCart == true){
                product.isAddedToCart = false
                product.itemsBought = 0            }
            
        }
    
    }
        catch{
            
        }
        
      /*  let storyboard = UIStoryboard(name: "Profile", bundle: nil)
               let pVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerProfile") as! ViewControllerProfile
        
        self.navigationController?.pushViewController(pVC, animated: true)*/
        
        //should I put here a func to reset all products properties
        
        
        //ipdate table -- data []
        //update products isAddedToCart = false
        //reload core data table
        
    }
    

   

}


extension CartViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tot = 0
        var subTot = 0
        var ship = 0
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        
        let cartData = dataArray[indexPath.row]
        cell.setupCell(Model: cartData)
        
       // subTot = Int(subTotal.text!) ?? -1
        for cartitem in dataArray{
        
        subTot = subTot + (Int(cartitem.itemsBought) * Int(cartitem.price))
        
        subTotal.text = String(subTot)
        
        }
        
        
        ship = Int(shipping.text!) ?? -1
        tot = Int(TotalPrice.text!) ?? -1
        tot = subTot + ship
        TotalPrice.text = String(tot)
        
        
        return cell
        
        
        
    }
    func tableView(_ tableView:
    UITableView, heightForRowAt
        indexPath: IndexPath) -> CGFloat{
        return 150
    }
    
    
}
