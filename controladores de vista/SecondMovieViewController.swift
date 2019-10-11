//
//  SecondMovieViewController.swift
//  Collection
//
//  Created by 2020-1 on 9/18/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class SecondMovieViewController: UIViewController {
    
    
    @IBOutlet weak var poster : UIImageView!
    @IBOutlet weak var nombre : UILabel!
    @IBOutlet weak var clasificacion: UILabel!
    @IBOutlet weak var duracion: UILabel!
    @IBOutlet weak var comprados: UILabel!

    
   
    
    
    var cartelera1: Cartelera!
    var carro: Carrito!
    var cantidad = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(patternImage: UIImage(named: "fondoB")!)
        
        poster.image = UIImage(named: cartelera1.poster)
        nombre.text = cartelera1.nombre
        clasificacion.text = "clasificación: " + cartelera1.clasificacion
        duracion.text = "duración: " + cartelera1.duracion
        cantidad = 0
        for x in carro.datos {
            if x.nombre == cartelera1.nombre{
                cantidad += 1
            }
        }
        comprados.text = "\(cantidad)"
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func agregarCarrito(_ sender: Any) {
        carro.agregaPelicula(compra: cartelera1)
        viewDidLoad()
    }
    
    @IBAction func quitarCarrito(_ sender: Any?){
        carro.quitarPelicula(compra: cartelera1)
        viewDidLoad()
    }
    

    @IBAction func cerrar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
