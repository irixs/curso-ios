//
//  ViewController.swift
//  alcool ou gasolina
//
//  Created by Íris Soares on 20/08/20.
//  Copyright © 2020 irixs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var precoAlcool: UITextField!
    @IBOutlet var precoGasolina: UITextField!
    @IBOutlet var resultado: UILabel!
    
    @IBAction func calcular(_ sender: UIButton) {
        view.endEditing(true)
        precoGasolina.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        precoAlcool.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        if (precoAlcool.text != "") {
            if(precoGasolina.text != ""){
                let alcool = Double(precoAlcool.text!)!
                let gasolina = Double(precoGasolina.text!)!
                let combustivel = melhorCombustível(alcool: alcool, gasolina: gasolina)
                resultado.text = "Melhor utilizar " + combustivel + "!"
            }else {
                resultado.text = "Digite o preço da Gasolina para Calcular!"
                precoGasolina.backgroundColor = #colorLiteral(red: 1, green: 0.9099903703, blue: 0.9741240144, alpha: 1)
            }
        } else {
            resultado.text = "Digite o preço do Álcool para Calcular!"
            precoAlcool.backgroundColor = #colorLiteral(red: 0.9992646575, green: 0.9098134041, blue: 0.972414434, alpha: 1)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func melhorCombustível (alcool: Double, gasolina: Double) -> String{
        if (alcool/gasolina >= 0.7){
            return "Gasolina"
        }
        return "Álcool"
    }
}

