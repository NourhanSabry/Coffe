//
//  Products+CoreDataProperties.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//
//

import Foundation
import CoreData


extension Products {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Products> {
        return NSFetchRequest<Products>(entityName: "Products")
    }

    @NSManaged public var id: Int32
    @NSManaged public var name: String?
    @NSManaged public var price: Double
    @NSManaged public var image: NSObject?
    @NSManaged public var size: Int16
    @NSManaged public var describe: String?
    @NSManaged public var sugar: Int16
    @NSManaged public var isAddedToCart: Bool
    @NSManaged public var itemsBought: Int32

}

extension Products : Identifiable {

}
