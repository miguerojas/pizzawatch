//
//  Masa.swift
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import Foundation
import WatchKit


class Masa: WKInterfaceController {
    let delgada: String = "Delgada"
    let crujiente: String = "Crujiente"
    let gruesa: String = "Gruesa"
    var valorContexto: Seleccion = Seleccion()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Tipo de Masa")
        
       if context != nil{
        valorContexto = context as! Seleccion
        }
    }
    override func willActivate() {
        super.willActivate()
    }
    override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func guardarDelgada() {
        setContexto(delgada)
    }
    @IBAction func guardarCrujiente() {
        setContexto(crujiente)
    }
    @IBAction func guardarGruesa() {
        setContexto(gruesa)
    }
    func setContexto(opcion: String) {
        valorContexto.masa = opcion
        pushControllerWithName("Queso", context: valorContexto)
        print(opcion)
    }
}
