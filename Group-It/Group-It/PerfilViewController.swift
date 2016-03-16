//
//  PerfilViewController.swift
//  Group-It
//
//  Created by Kariny Castelo Cavalcante Mota on 12/03/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var perfilImage: UIImageView!
    @IBOutlet weak var perfilNome: UILabel!
    @IBOutlet weak var perfilInfo: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var atividades: [String] = ["Skate", "CrossFit", "Basquete", "Futebol", "Volei", "Hockey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return atividades.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("atividadesCell", forIndexPath: indexPath) as! PerfilFavoritoCollectionViewCell
        
        cell.atividadeIcon.image = UIImage(named: atividades[indexPath.item])
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        let footer = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "footerView", forIndexPath: indexPath) as! PerfilFavoritoFooterCollectionReusableView
        
        footer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "addAtividade"))
        
        return footer
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let alert = UIAlertController(title: "Remover atividade?", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Sim", style: .Default, handler: { (alert: UIAlertAction) -> Void in
            
            self.removeAtividade(indexPath.item)
        }))
        
        alert.addAction(UIAlertAction(title: "Não", style: UIAlertActionStyle.Cancel, handler: nil))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //MARK: - Adicionar atividade
    
    func addAtividade() {
        
        performSegueWithIdentifier("adicionarAtividadeSegue", sender: self)
    }
    
    //MARK: - Remover atividade
    
    func removeAtividade(index: Int) {
        
        self.atividades.removeAtIndex(index)
        collectionView.reloadData()
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
}