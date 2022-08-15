//
//  HomeViewController.swift
//  CoffeeProjecttt
//
//  Created by Noha Naguib on 14/08/2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    var arrCoffee = [Coffee]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrCoffee.append(Coffee.init(name: "Espresso", photo: UIImage(named: "coffee")!))
        arrCoffee.append(Coffee.init(name: "Cappuccino", photo: UIImage(named: "coffee")!))
        arrCoffee.append(Coffee.init(name: "Macciato", photo: UIImage(named: "coffee")!))
        arrCoffee.append(Coffee.init(name: "Mocha", photo: UIImage(named: "coffee")!))
        arrCoffee.append(Coffee.init(name: "Latte", photo: UIImage(named: "coffee")!))
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCoffee.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        let data = arrCoffee[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name)
        
        return cell

    }
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 100
   }
}
struct Coffee {
    let name : String
    let photo : UIImage
}
