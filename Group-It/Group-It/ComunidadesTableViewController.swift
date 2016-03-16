//
//  ComunidadesTableViewController.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 12/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class ComunidadesTableViewController: UITableViewController {

    var comunidades: [Comunidade] = [Comunidade(), Comunidade(), Comunidade(), Comunidade(), Comunidade()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
        
        comunidades[0].nome = "Corrida"
        comunidades[0].urlImg = "corrida"
        comunidades[0].atividade = Atividade()
        comunidades[0].atividade?.nome = "Corrida"
        comunidades[0].membros = [Usuario(), Usuario(), Usuario(), Usuario()]
        
        comunidades[1].nome = "Kart"
        comunidades[1].urlImg = "kart"
        comunidades[1].atividade = Atividade()
        comunidades[1].atividade?.nome = "Kart"
        comunidades[1].membros = [Usuario(), Usuario()]
        
        comunidades[2].nome = "Tennis"
        comunidades[2].urlImg = "tennis"
        comunidades[2].atividade = Atividade()
        comunidades[2].atividade?.nome = "Tennis"
        comunidades[2].membros = [Usuario(), Usuario()]
        
        comunidades[3].nome = "Basquete"
        comunidades[3].urlImg = "basquete"
        comunidades[3].atividade = Atividade()
        comunidades[3].atividade?.nome = "Basquete"
        comunidades[3].membros = [Usuario(), Usuario()]
        
        comunidades[4].nome = "PaintBall"
        comunidades[4].urlImg = "paintball"
        comunidades[4].atividade = Atividade()
        comunidades[4].atividade?.nome = "PaintBall"
        comunidades[4].membros = [Usuario(), Usuario()]

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
        
        cell.nomeComunidade.text = comunidade.nome
        cell.imageComunidade.image = UIImage(named: comunidade.urlImg!)
        cell.tipo.text = comunidade.atividade?.nome
        cell.quantidadeMembros.text = "\(comunidade.membros?.count ?? 0) membros"

        return cell
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "detalheComunidadeSegue" {
            
            if let controller = segue.destinationViewController as? DetalheComunidadeViewController {
                
                controller.comunidade = comunidades[self.tableView.indexPathForSelectedRow!.row] 
            }
        }
    }
}