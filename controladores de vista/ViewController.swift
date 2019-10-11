//
//  ViewController.swift
//  Collection
//
//  Created by 2020-1 on 9/11/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    @IBOutlet weak var collectioncit: UICollectionView!
    
    var carro: Carrito = Carrito()
    var carteleras : [Cartelera] = [Cartelera( poster: "Aladin", nombre : "Aladin",clasificacion: "AA", duracion: "90 minutos",precio: 120, horario: "9 a 10:30 am", cupo: 20),
        Cartelera(poster: "X", nombre : " X- men: Fenix Oscura", clasificacion: "B", duracion: "120 minutos", precio: 90, horario: "11 a 1 pm", cupo: 25),
        Cartelera( poster: "Moon", nombre: "MoonLigth", clasificacion: "B-12", duracion: "180 minutos", precio: 80, horario: "1 a 4 pm", cupo: 22),
        Cartelera( poster: "Scary", nombre: "Scary Movie", clasificacion: "B-12", duracion: "120 minutos",precio: 50, horario: "6 a 8pm", cupo: 15),
        Cartelera(poster: "Little", nombre: "Little Man", clasificacion: "B", duracion: "90 minutos",precio: 130, horario: "3 a 4:30 pm", cupo: 23),
        Cartelera(poster: "Capitana", nombre: "Capitana Marvel", clasificacion: "B", duracion: "120 minutos",precio: 100, horario: "2 a 4 pm", cupo: 20) ]
    
    
    //----------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     view.backgroundColor = .init(patternImage: UIImage(named: "fondoB")!)
     collectioncit.backgroundColor = .clear
        
    }
//-----------------------------
    //
    //as?
    //as!
    func collectionView(_ colectionView: UICollectionView, numberOfItemsInSection: Int)-> Int{
        return carteleras.count
    }
    //---------------------------
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuadrito", for: indexPath) as! peliculaCollectionViewCell
        //let segundaVista = segue.destination as! SecondMovieViewController
        //cell.titulo.text = cartelera[indexPath.item].titulo
        
        cell.poster.image = UIImage(named : carteleras[indexPath.item].poster)
        
        return cell
    }
    
    
    //---------------------------------------------
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "vista2"{
            let segundaVista = segue.destination as! SecondMovieViewController
            let myIndexPath = collectioncit.indexPathsForSelectedItems
            segundaVista.cartelera1 = carteleras[(myIndexPath!.first!.item)]
            segundaVista.carro = carro
            
        } else if segue.identifier == "vista3"{
            
            let terceraVista = segue.destination as! ThirdViewController
            terceraVista.carro = carro
        }
    
    }
      
    

}
