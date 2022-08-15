//
//  Users+CoreDataProperties.swift
//  CoffeeProjecttt
//
//  Created by Mayar Adel on 8/15/22.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var id: Int32
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var name: String?

}

extension Users : Identifiable {

}
