//
//  CompraTableViewCell.swift
//  Collection
//
//  Created by 2020-1 on 10/9/19.
//  Copyright © 2019 orion. All rights reserved.
//

import UIKit

class CompraTableViewCell: UITableViewCell {
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var precio: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
