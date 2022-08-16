//
//  CartViewController.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//

import UIKit

struct CoffeeModel {
   var name: String
    var price: Double
    var image: UIImage
    
}

class CartViewController: UIViewController {
    
    
    @IBOutlet weak var CartTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CartTable.delegate = self
        CartTable.dataSource = self
    }


   

}
