//
//  EventoDAO.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData

class EventoDAO {
    
    // TODO:
    
    // insert new object
    static func insert(task: Evento) {
        
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao inserir evento: ", error)
        }
    }
    
    // update existing object
    static func update() {
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao alterar evento: ", error)
        }
    }
    
    // delete object
    static func delete(task: Evento) {
        
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao deletar evento: ", error)
        }
    }
    
    // fetch all existing objects
    static func fetchAllTasks() -> [Evento] {
        
        let request = NSFetchRequest(entityName: "Evento")
        
        request.sortDescriptors = [NSSortDescriptor(key: "dataCriacao", ascending: true)]
        
        var results = [Evento]()
        
        do {
            
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [Evento]
            
        } catch let error as NSError {
            
            print("Erro ao buscar eventos: ", error)
        }
        
        return results
    }
}

