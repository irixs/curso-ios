//
//  ViewController.swift
//  random
//
//  Created by Íris Soares on 30/07/20.
//  Copyright © 2020 irixs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroInicial: UITextField!
    @IBOutlet weak var numeroFinal: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    @IBAction func resultadoButton(_ sender: Any) {
        var lower: UInt32
        var upper: UInt32
        if (numeroInicial.text == "") {
            lower = 1
        }
        else{
            lower = UInt32(numeroInicial.text!)!
        }
        if (numeroFinal.text == "") {
            upper = 11
        }
        else{
            upper = UInt32(numeroFinal.text!)! + UInt32(1)
        }
        let randomNumber = arc4random_uniform(upper - lower) + lower
        resultado.text = String(randomNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

}

