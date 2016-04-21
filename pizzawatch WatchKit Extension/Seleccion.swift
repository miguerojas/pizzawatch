//
//  Seleccion.swift
//  pizzawatch
//
//  Created by MIGUEL on 20/04/16.
//  Copyright © 2016 Miguel Rojas. All rights reserved.
//

import Foundation
import WatchKit

class Seleccion: NSObject {
    var tamano: String?
    var masa: String?
    var queso: String?
    var ingredientes: [String] = []
    
    override init() {
    }
    init(valor: Seleccion) {
        self.tamano = valor.tamano
        self.masa = valor.masa
        self.queso = valor.queso
        self.ingredientes = valor.ingredientes
    }
}
