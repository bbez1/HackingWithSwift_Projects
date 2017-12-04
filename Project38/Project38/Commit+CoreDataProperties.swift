//
//  Commit+CoreDataProperties.swift
//  Project38
//
//  Created by Bryan Besnyi on 12/01/2017.
//  Copyright © 2017 Bryan Besnyi. All rights reserved.
//

import Foundation
import CoreData

extension Commit {
    @nonobjc public class func createFetchRequest() -> NSFetchRequest<Commit> {
        return NSFetchRequest<Commit>(entityName: "Commit");
    }


    @NSManaged public var date: Date
    @NSManaged public var message: String
    @NSManaged public var sha: String
    @NSManaged public var url: String
    @NSManaged public var author: Author
}
