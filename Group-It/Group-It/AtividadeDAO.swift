//
//  AtividadeDAO.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import Foundation
import CoreData

class AtividadeDAO {
    
    // TODO:
    
    // insert new object
    static func insert(atividade: Atividade) {
        
        DatabaseManager.sharedInstance.managedObjectContext.insertObject(atividade)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao inserir atividade: ", error)
        }
    }
    
    // update existing object
    static func update() {
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao alterar tividade: ", error)
        }
    }
    
    // delete object
    static func delete(atividade: Atividade) {
        
        DatabaseManager.sharedInstance.managedObjectContext.deleteObject(atividade)
        
        do {
            
            try DatabaseManager.sharedInstance.managedObjectContext.save()
            
        } catch let error as NSError {
            
            print("Erro ao deletar atividade: ", error)
        }
    }
    
    // fetch all existing objects
    static func fetchAllTasks() -> [Atividade] {
        
        let request = NSFetchRequest(entityName: "Atividade")
        
        request.sortDescriptors = [NSSortDescriptor(key: "dataCriacao", ascending: true)]
        
        var results = [Atividade]()
        
        do {
            
            results = try DatabaseManager.sharedInstance.managedObjectContext.executeFetchRequest(request) as! [Atividade]
            
        } catch let error as NSError {
            
            print("Erro ao buscar atividades: ", error)
        }
        
        return results
    }
}

