//
//  CartViewController.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//

import UIKit



class CartViewController: UIViewController {
    var test4: Products?
    @IBOutlet weak var checkOut: UIButton!
    
    @IBOutlet weak var CartTable: UITableView!
    var dataArray = [Products]()
    
    
    
    //fetched by get code from core data-->Menu
    //Cart-->Add To Cart Action arrayy=dataArray
    
    override func viewDidLoad() {
        super.viewDidLoad()

      CartTable.delegate = self
        CartTable.dataSource = self
        
        for test4 in products{
            if (test4.isAddedToCart == true){
                dataArray.append(test4)
                
            }
        }
        
      /*  dataArray.append(CoffeeModel.init(name: "Espresso",price: 22 ,image: UIImage(named: "espresso")!))
        dataArray.append(CoffeeModel.init(name: "Cappuccino",price: 40 ,image: UIImage(named: "cappuccino2")!))
        dataArray.append(CoffeeModel.init(name: "Macchiato", price:50 ,image: UIImage(named: "macciato")!))
        dataArray.append(CoffeeModel.init(name: "Mocha", price: 35 , image: UIImage(named: "mocha")!))
        dataArray.append(CoffeeModel.init(name: "Latte", price: 55 , image: UIImage(named: "latte")!)) */
        
        checkOut.layer.cornerRadius = 25
    }


   

}


extension CartViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        
        let cartData = dataArray[indexPath.row]
        cell.setupCell(Model: cartData)
        
        return cell
        
        
        
    }
    func tableView(_ tableView:
    UITableView, heightForRowAt
        indexPath: IndexPath) -> CGFloat{
        return 150
    }
    
    
}
