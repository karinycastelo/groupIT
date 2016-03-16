//
//  PostagemDAO.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData

class PostagemDAO {
    
    // TODO:
    
    // insert new object
    static func insert(task: Postagem) {
        
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao inserir postagem: ", error)
        }
    }
    
    // update existing object
    static func update() {
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao alterar postagem: ", error)
        }
    }
    
    // delete object
    static func delete(task: Postagem) {
        
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(task)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao deletar postagem: ", error)
        }
    }
    
    // fetch all existing objects
    static func fetchAllTasks() -> [Postagem] {
        
        let request = NSFetchRequest(entityName: "Postagem")
        
        request.sortDescriptors = [NSSortDescriptor(key: "dataCriacao", ascending: true)]
        
        var results = [Postagem]()
        
        do {
            
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [Postagem]
            
        } catch let error as NSError {
            
            print("Erro ao buscar postagens: ", error)
        }
        
        return results
    }
}

