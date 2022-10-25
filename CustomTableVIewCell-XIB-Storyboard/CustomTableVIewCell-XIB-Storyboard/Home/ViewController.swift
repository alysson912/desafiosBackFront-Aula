//
//  ViewController.swift
//  CustomTableVIewCell-XIB-Storyboard
//
//  Created by ALYSSON MENEZES on 24/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
     
    let listName : [String] = [ "Audi","BMW","Toyota", "David", "Felipe"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

    func configTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        // adicionando identificador
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
        
}
//MARK: - Protocols Table View  
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        //return  arrayPeson.count // percorrendo array e exibindo elementos ate o fim
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        // as ? para acessar os atributos que estao dentro da classe (no caso CustomTableViewCell)
        cell?.setupCell(title: listName[indexPath.row])
      return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listName[indexPath.row])
    }
    
    
}

