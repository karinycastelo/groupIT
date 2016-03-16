//
//  Comunidade+CoreDataProperties.swift
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

extension Comunidade {

    @NSManaged var dataCriacao: NSDate?
    @NSManaged var descricao: String?
    @NSManaged var nome: String?
    @NSManaged var urlImg: String?
    @NSManaged var atividade: Atividade?
    @NSManaged var dono: Usuario?
    @NSManaged var membros: NSSet?
    @NSManaged var postagens: NSSet?

}
