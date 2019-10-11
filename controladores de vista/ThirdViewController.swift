//
//  ThirdViewController.swift
//  Collection
//
//  Created by 2020-1 on 10/9/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var carro: Carrito!
    @IBOutlet weak var tablaCarro: UITableView!
    
    @IBOutlet weak var precioTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(patternImage: UIImage(named: "fondoC")!)
        tablaCarro.backgroundColor = .clear
        
        
        var precioFinal: Int = 0
        
        
        for x in carro.datos {
           precioFinal += x.precio
        }
        precioTotal.text = "Precio total: $\(precioFinal)"
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carro.datos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CompraTableViewCell
    
        cell.poster.image = UIImage(named: carro.datos[indexPath.row].poster)
        cell.nombre.text = carro.datos[indexPath.row].nombre
        cell.precio.text = "precio: $\(carro.datos[indexPath.row].precio)"
        cell.backgroundColor = .clear
        
        return cell
    }
    
    internal func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            // delete item at indexPath
            self.carro.datos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        //carro.datos.remove(at: indexPath.row)
        //tableView.deleteRows(at: [indexPath], with: .fade)
        
        viewDidLoad()
        return [delete]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 180.0
    }
    
    


    

    @IBAction func cerrar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func confirmarCompra(_ sender: UIButton) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let cuartaVista = segue.destination as! FourthViewController
            
            //cuartaVista.carro = carro
        }
        //precioTotal.text = "Gracias por tu compra"
    }
    
    @IBAction func cancelarCompra(_ sender: Any) {
        carro.datos.removeAll()
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
