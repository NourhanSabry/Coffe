//
//  HomeViewController.swift
//  CoffeeProjecttt
//
//  Created by Noha Naguib on 14/08/2022.
//

import UIKit

protocol NavigationProtocal{
    
    func update()
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var test5: Products?
    var TotalProducts = 0
    
    @IBOutlet weak var count1: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var arrCoffee = [Coffee]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arrCoffee.append(Coffee.init(name: "Espresso", photo: UIImage(named: "espresso")!))
        arrCoffee.append(Coffee.init(name: "Cappuccino", photo: UIImage(named: "cappuccino2")!))
        arrCoffee.append(Coffee.init(name: "Macchiato", photo: UIImage(named: "macciato")!))
        arrCoffee.append(Coffee.init(name: "Mocha", photo: UIImage(named: "mocha")!))
        arrCoffee.append(Coffee.init(name: "Latte", photo: UIImage(named: "latte")!))
        

    }
    
    @IBAction func GOprofile(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Profile", bundle: nil)
               let profVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerProfile") as! ViewControllerProfile
        
        self.navigationController?.pushViewController(profVC, animated: true)
        
        
    }
    
    @IBAction func goDetails(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
               let detailsVC = storyboard.instantiateViewController(withIdentifier: "ViewControllerdetails") as! ViewControllerdetails
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
        
    
        
    }
    
    
    @IBAction func goToCart(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "cart", bundle: nil)
               let detailsVC = storyboard.instantiateViewController(withIdentifier: "CartViewController") as! CartViewController
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //var price: Products?
        let item = arrCoffee[indexPath.row]
        var namee = item.name
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ViewControllerdetails") as! ViewControllerdetails
        
        vc.coffff = item
        vc.dataController = self
        
        self.present(vc, animated: true, completion: nil)
        
    //    self.performSegue(withIdentifier: "Details", sender: item)
    }
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Details" {
            let detailController = segue.destination as! ViewControllerdetails
            detailController.coffff = sender as! CoffeeModel
        }
    
    
}*/
}

extension HomeViewController: NavigationProtocal{
    
    func update(){
        for test5 in products{
            if (test5.isAddedToCart == true){
                TotalProducts = TotalProducts + Int(test5.itemsBought)
                
            }
            
                
}
        count1.text = String(TotalProducts)}
}
