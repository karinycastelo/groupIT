//
//  AdicionarAtividadeViewController.swift
//  Group-It
//
//  Created by Student on 3/14/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class AdicionarAtividadeViewController: UIViewController {
    
    @IBOutlet weak var atividadesPicker: UIPickerView!

    var atividades: [String] = ["Skate", "CrossFit", "Basquete", "Futebol", "Volei", "Hockey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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