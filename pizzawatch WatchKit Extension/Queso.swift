//
//  Queso.swift
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import WatchKit
import Foundation


class Queso: WKInterfaceController {
    let mozarela: String = "Mozarela"
    let cheddar: String = "Cheddar"
    let parmesano: String = "Parmesano"
    let sinQueso: String = "Sin queso"
    var valorContexto: Seleccion = Seleccion()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Tipo de Queso")
        
       // if context != nil {
        valorContexto = context as! Seleccion
        //}
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func guardarMozarela() {
        setContexto(mozarela)
    }
    @IBAction func guardarCheddar() {
        setContexto(cheddar)
    }
    @IBAction func guardarParmesano() {
        setContexto(parmesano)
    }
    @IBAction func guardarSinQueso() {
        setContexto(sinQueso)
    }
    func setContexto(opcion: String) {
        valorContexto.queso = opcion
        pushControllerWithName("idIngredientes", context: valorContexto)
        print(opcion)
    }
}
