//
//  Usuario+CoreDataProperties.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 15/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Usuario {

    @NSManaged var fotoURL: String?
    @NSManaged var nome: String?
    @NSManaged var amigos: NSSet?
    @NSManaged var atividades: NSSet?
    @NSManaged var comunidades: NSSet?
    @NSManaged var postagens: NSSet?
    @NSManaged var comunidadesCriadas: NSSet?
}