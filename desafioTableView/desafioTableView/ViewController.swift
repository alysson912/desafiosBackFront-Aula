//
//  ViewController.swift
//  desafioTableView
//
//  Created by ALYSSON MENEZES on 20/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeTableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableViewCell()
    }

    
    
    func setupTableViewCell(){
        homeTableVIew.delegate = self
        homeTableVIew.dataSource = self
        homeTableVIew.register(NameTableViewCell.nib(), forCellReuseIdentifier: NameTableViewCell.identifier)
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return   4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? // para acessar as propriedades da classe antes de exibir a celular
        NameTableViewCell
        
    
        
        return UITableViewCell()
    }
    
    
}

//extension ViewController : UITableViewDelegate {
//
//}
