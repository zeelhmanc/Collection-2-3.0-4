//
//  DatosCompra.swift
//  Collection
//
//  Created by 2020-1 on 10/9/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class DatosCompra{
    var cartelera: Cartelera
    //var cantidadBoletos: Int
    //var precio: Int
    
    init(cartelera: Cartelera){
        //self.cantidadBoletos = cantidadBoletos
        self.cartelera = cartelera
        
    }
    
    func obtenerPrecio()-> Int{
        return cartelera.precio
    }
    func compra(comp: DatosCompra)-> [DatosCompra]{
        let arregloDeCompra: [DatosCompra] = [comp]
        return arregloDeCompra
    }
}
