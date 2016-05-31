//
//  Confirmacion.swift
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import WatchKit
import Foundation


class Confirmacion: WKInterfaceController {
    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    
    
    
    @IBOutlet var ingredientes: WKInterfaceLabel!
    @IBOutlet var cocina: WKInterfaceLabel!
    @IBOutlet var confirmarButton: WKInterfaceButton!
    @IBOutlet var cambiarSeleccionButton: WKInterfaceButton!
    var valorContexto: Seleccion = Seleccion()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.setTitle("Confirmación")
        cocina.setHidden(true)
        
       if context != nil {
            
        valorContexto = context as! Seleccion
        
        }
    }

    
        override func willActivate() {
        super.willActivate()
        tamano.setText(valorContexto.tamano)
        masa.setText(valorContexto.masa)
        queso.setText(valorContexto.queso)
        var ingredientesSalida: String = ""
        var i = 0
        while i < valorContexto.ingredientes.count  {
            ingredientesSalida += valorContexto.ingredientes[i] + ", "
            i += 1
            
        ingredientesSalida += valorContexto.ingredientes[i]
        ingredientes.setText(String(ingredientesSalida))
        
            }
    }
         override func didDeactivate() {
        super.didDeactivate()
    }
    @IBAction func confirmar() {
        cocina.setHidden(false)
        confirmarButton.setHidden(true)
        cambiarSeleccionButton.setHidden(true)
    }
    
}

