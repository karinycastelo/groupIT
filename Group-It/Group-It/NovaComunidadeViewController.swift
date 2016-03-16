//
//  NovaComunidadeViewController.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class NovaComunidadeViewController: UIViewController {
    @IBOutlet weak var imageComunidade: UIImageView!
    @IBOutlet weak var iconCamera: UIButton!
    @IBOutlet weak var nomeComunidade: UITextField!
    @IBOutlet weak var addComunidade: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func adicionarComunidade(sender: AnyObject) {
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
