//
//  DetalheComunidadeViewController.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class DetalheComunidadeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var nomeComunidade: UILabel!
    @IBOutlet weak var imagemComunidade: UIImageView!
    @IBOutlet weak var quantidadeMembros: UILabel!
   
    @IBOutlet weak var seguirButton: UIButton!
   
    var comunidade: Comunidade?
    
    var postagens: [Postagem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.postagens = Array(comunidade!.postagens!) as! Array<Postagem>
        imagemComunidade.image = UIImage(named: (self.comunidade?.urlImg)!)
        nomeComunidade.text = self.comunidade?.nome
        quantidadeMembros.text = "\(comunidade!.membros?.count ?? 0) membros"
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postagens.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("postCell", forIndexPath: indexPath) as! PostagemTableViewCell
        
        cell.datePostagem.text = "20/03/2016"
        cell.descricao.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("detalhePostagem", sender: self)
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "novaPostagem" {
            
            if let controller = segue.destinationViewController as? NovaPostagemViewController {
//                    controller.imagePerfil = self.comunidade.
                //                controller.nomePerfil
            }
            
        } else if segue.identifier == "detalhePostagem" {
            
            if let controller = segue.destinationViewController as? NovaPostagemViewController {
                
                //                controller.imagePerfil =
                //                controller.nomePerfil
                controller.descricaoPostagem.text = postagens[(self.tableView.indexPathForSelectedRow?.row)!].descricao
                controller.addPostagem.hidden = true
            }
        }
    }
    @IBAction func setSeguirComunidade(sender: UIButton) {
        
        if sender.currentTitle == "seguir" {
            
            sender.setTitle("seguindo", forState: UIControlState.Normal)
            
        }else {
            
            let alert = UIAlertController()
            alert.message = "Deixar de seguir \(self.comunidade?.nome)?"
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
            
            alert.addAction(UIAlertAction(title: "Sim", style: .Default, handler: { (action: UIAlertAction) in
                sender.setTitle("seguir", forState: UIControlState.Normal)
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    
}
