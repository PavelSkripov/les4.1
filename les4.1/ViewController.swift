//
//  ViewController.swift
//  les4.1
//
//  Created by Павел on 29.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mytext: UILabel!
    
    var text = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytext.text = text
        
         }
    }




