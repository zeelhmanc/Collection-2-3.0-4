//
//  Carrito.swift
//  Collection
//
//  Created by 2020-1 on 10/9/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class Carrito{
    var datos: [Cartelera] = []
    var count: Int = 0
    
    //init(datos: [Cartelera]) {
    //   self.datos = datos
    //}
    //--------------------------------------------
    func agregaPelicula(compra: Cartelera) {
        count = count + 1
        datos.append(compra)
    }
    
    //------------------------------------
    func quitarPelicula(compra: Cartelera){
        if count != 0{
            count = count - 1
            datos.remove(at: count)
        }

    }
    
}
