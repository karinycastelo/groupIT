//
//  Evento.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData


class Evento: NSManagedObject {

    convenience init() {
        
        let context: NSManagedObjectContext = DatabaseManager.sharedInstance.managedObjectContext
        
        let entityDescription: NSEntityDescription? = NSEntityDescription.entityForName("Evento", inManagedObjectContext: context)
        
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
    }
}