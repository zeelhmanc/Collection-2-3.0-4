//
//  FourthViewController.swift
//  Collection
//
//  Created by 2020-1 on 10/10/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tablita: UITableView!
    @IBOutlet weak var compraRealizada: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .init(patternImage: UIImage(named: "fondoB")!)
        tablita.backgroundColor = .clear
    

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath) as! CuartaTableViewCell
        
        cell.foto.image = UIImage(named: "tarjeta")
        cell.backgroundColor = .clear
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 180.0
    }
    
    @IBAction func cerrar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
    }

    

}
