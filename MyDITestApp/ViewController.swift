//
//  ViewController.swift
//  MyDITestApp
//
//  Created by Mikael Olsson on 2019-03-31.
//  Copyright © 2019 Mikael Olsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let assembler = appDelegate.assembler
        
        let labelService = assembler.resolver.resolve(LabelService.self)
        let x = labelService!.getLabeTextWithTimestamp("abc123")
        
        myLabel.text = x
        
        // print(x)
        
    }


}

