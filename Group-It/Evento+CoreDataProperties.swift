//
//  Evento+CoreDataProperties.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Evento {

    @NSManaged var nome: String?
    @NSManaged var data: NSDate?
    @NSManaged var descricao: String?
    @NSManaged var endereco: String?
    @NSManaged var atividade: Atividade?

}