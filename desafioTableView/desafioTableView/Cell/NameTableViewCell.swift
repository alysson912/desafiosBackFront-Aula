//
//  NameTableViewCell.swift
//  desafioTableView
//
//  Created by ALYSSON MENEZES on 20/10/22.

// acessando code snpeds command shift L

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier : String = "NameTableViewCell" // SEMPRE usar id com mesmo nome da classe
    
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
}
