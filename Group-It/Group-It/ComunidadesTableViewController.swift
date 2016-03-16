//
//  ComunidadesTableViewController.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 12/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class ComunidadesTableViewController: UITableViewController {

    var comunidades: [Comunidade] = [Comunidade(), Comunidade()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
        
        comunidades[0].nome = "Teste"
        comunidades[0].urlImg = ""
        comunidades[0].atividade = Atividade()
        comunidades[0].atividade?.nome = "Skate"
        comunidades[0].membros = [Usuario(), Usuario(), Usuario(), Usuario()]
        
        comunidades[1].nome = "Teste 2"
        comunidades[1].urlImg = ""
        comunidades[1].atividade = Atividade()
        comunidades[1].atividade?.nome = "Academia"
        comunidades[1].membros = [Usuario(), Usuario()]
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comunidades.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("comunidadeCell", forIndexPath: indexPath) as! ComunidadeTableViewCell
        
        let comunidade = comunidades[indexPath.row]
        
        cell.nomeComunidade.text = comunidade.nome ?? "Teste " + String(indexPath.row)
        cell.imageComunidade.image = UIImage(named: comunidade.urlImg ?? "comunidade")
        cell.tipo.text = comunidade.atividade?.nome
        cell.quantidadeMembros.text = String(comunidade.membros?.count) + " membros"

        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("comunidadeSegue", sender: self)
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "comunidadeSegue" {
            
            if let controller = segue.destinationViewController as? DetalheComunidadeViewController {
                
                controller.comunidade = comunidades[self.tableView.indexPathForSelectedRow!.row]
            }
        }
    }
}