//
//  ViewController.swift
//  CalculadoraChan
//
//  Created by Íris Soares on 27/07/20.
//  Copyright © 2020 irixs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroEPS: UITextField!
    @IBOutlet weak var resultadoTexto: UILabel!
    
    @IBAction func coverterButton(_ sender: UIButton) {
        let horas = (Int(numeroEPS.text!)!*25)/60
        resultadoTexto.text = "Você vai perder " + String(horas) + " horas da sua vida assistindo isso *-*"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

