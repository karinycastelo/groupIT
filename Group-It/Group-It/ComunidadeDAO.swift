//
//  ComunidadeDAO.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData

class ComunidadeDAO {
    
    // TODO:
    
    // insert new object
    static func insert(task: Comunidade) {
        
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao inserir comunidade: ", error)
        }
    }
    
    // update existing object
    static func update() {
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao alterar comunidade: ", error)
        }
    }
    
    // delete object
    static func delete(task: Comunidade) {
        
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao deletar comunidade: ", error)
        }
    }
    
    // fetch all existing objects
    static func fetchAllTasks() -> [Comunidade] {
        
        let request = NSFetchRequest(entityName: "Comunidade")
        
        request.sortDescriptors = [NSSortDescriptor(key: "dataCriacao", ascending: true)]
        
        var results = [Comunidade]()
        
        do {
            
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [Comunidade]
            
        } catch let error as NSError {
            
            print("Erro ao buscar comunidades: ", error)
        }
        
        return results
    }
}

