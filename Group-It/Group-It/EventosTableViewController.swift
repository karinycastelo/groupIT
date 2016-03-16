//
//  EventosTableViewController.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 15/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class EventoTableViewController: UITableViewController {
    
    var eventos: [Evento] = [Evento]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let evento = Evento()
        
        evento.nome = "Maratona Pague Menos"
        evento.data = NSDate(timeIntervalSinceNow: 400000)
        
        eventos.append(evento)
        
        evento.nome = "Trilha de Bike"
        evento.data = NSDate(timeIntervalSinceNow: 500000)
        
        eventos.append(evento)
        
        evento.nome = "Encontro SK8 na Beira Mar"
        evento.data = NSDate(timeIntervalSinceNow: 200000)
        
        eventos.append(evento)
        
        evento.nome = "Crossfit Day"
        evento.data = NSDate(timeIntervalSinceNow: 900000)
        
        eventos.append(evento)
        
        evento.nome = "Aula de Surf no Beach Park"
        evento.data = NSDate(timeIntervalSinceNow: 10000)
        
        eventos.append(evento)
        
        evento.nome = "Campeonato de Basquete"
        evento.data = NSDate(timeIntervalSinceNow: 300000)
        
        eventos.append(evento)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return eventos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("eventoCell", forIndexPath: indexPath) as! EventoTableViewCell
        
        //        cell.nameEvent.text = evento[indexPath.row].nome
        //        cell.diaNumEvent.text = evento[indexPath.row].diaNum
        //        cell.diaEvent.text = evento[indexPath.row].dia
        
        return cell
    }
}