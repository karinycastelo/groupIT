//
//  NovaPostagemViewController.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class NovaPostagemViewController: UIViewController {

    @IBOutlet weak var imagePerfil: UIImageView!
    @IBOutlet weak var nomePerfil: UILabel!
    @IBOutlet weak var descricaoPostagem: UITextView!
    @IBOutlet weak var addPostagem: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func adicionarPostagem(sender: AnyObject) {
        
        let alert = UIAlertController()
        alert.title = "Alert"
        alert.message = "Você tem certeza que deseja postar?"
        
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
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
