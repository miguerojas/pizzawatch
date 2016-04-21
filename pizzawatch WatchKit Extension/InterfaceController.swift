//
//  InterfaceController.swift
//  pizzawatch WatchKit Extension
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    let pequeña="pequeña"
    let mediana="mediana"
    let grande="grande"

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func selpequeña() {
        tamaño(pequeña)
        
    }
    @IBAction func selmediana() {
        tamaño(mediana)
    }
    
    @IBAction func selGrande() {
        tamaño(grande)
    }
    func tamaño (opcion: String) {
        let texto = Seleccion()
        texto.tamano = opcion
        pushControllerWithName("Masa", context: texto)
        print(opcion)
    
   }
}