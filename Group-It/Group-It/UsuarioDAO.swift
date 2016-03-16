//
//  UsuarioDAO.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData

class UsuarioDAO {
    
    // TODO:
    
    // insert new object
    static func insert(task: Usuario) {
        
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao inserir usuario: ", error)
        }
    }
    
    // update existing object
    static func update() {
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao alterar usuario: ", error)
        }
    }
    
    // delete object
    static func delete(task: Usuario) {
        
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao deletar usuario: ", error)
        }
    }
    
    // fetch all existing objects
    static func fetchAllTasks() -> [Usuario] {
        
        let request = NSFetchRequest(entityName: "Usuario")
        
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        var results = [Usuario]()
        
        do {
            
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [Usuario]
            
        } catch let error as NSError {
            
            print("Erro ao buscar usuarios: ", error)
        }
        
        return results
    }
}

