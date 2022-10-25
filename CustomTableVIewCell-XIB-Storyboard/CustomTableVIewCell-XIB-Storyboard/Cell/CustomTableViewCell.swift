//
//  CustomTableViewCell.swift
//  CustomTableVIewCell-XIB-Storyboard
//
//  Created by ALYSSON MENEZES on 24/10/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    static let identifier : String = "CustomTableViewCell" // SEMPRE usar id com mesmo nome da classe static -> nao tem nenhuma dependencia ao istanciar ele   
    
    
//MARK: - referencia para indicar qual o arquivo da XIB
    static func nib() -> UINib {
        return UINib( nibName: identifier, bundle: nil)
    }
    
    //MARK: - CICLO DE VIDA INICIAL DA XIB (SEMELHANTE AO VIEW DIDLOAD)
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupCell(title : String ){
        titleLabel.text = title
    }
 
    
}
