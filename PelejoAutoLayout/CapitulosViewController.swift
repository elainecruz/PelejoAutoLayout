//
//  CapitulosViewController.swift
//  PelejoAutoLayout
//
//  Created by Elaine  Cruz on 18/08/20.
//  Copyright © 2020 Elaine  Cruz. All rights reserved.
//

import Foundation

import UIKit



class CapitulosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var capitulosLabel: UILabel!
    @IBOutlet weak var cactusImageView: UIImageView!
    let capitulosTableView = UITableView()
    var capitulosNomes = ["Mudança", "Fabiano", "Cadeia", "Sinhá Vitória", "O menino mais novo", "O menino mais velho", "Inverno", "Festa", "Baleia","Contas", "O soldado amarelo", "O mundo coberto de penas", "Fuga"]
    let availableChapter = UIImageView(image: UIImage(named: "Button" ))
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      return capitulosNomes.count
        
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      cell.backgroundColor = .clear
      //cell.backgroundView = availableChapter
      cell.textLabel?.text = capitulosNomes[indexPath.row]
      cell.textLabel?.center = cell.center
      cell.textLabel?.font = UIFont(name: "Underdog-Regular", size: 20)
      return cell
    }
    
    override func loadView() {
        super.loadView()
        
      view.addSubview(capitulosTableView)

        capitulosTableView.dataSource = self
        capitulosTableView.delegate = self
        capitulosTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraint(NSLayoutConstraint(item: capitulosTableView, attribute: .top, relatedBy: .equal, toItem: capitulosLabel!, attribute: .bottom, multiplier: 1.0, constant: 50))
        
        
        self.view.addConstraint(NSLayoutConstraint(item: capitulosTableView, attribute: .bottom, relatedBy: .equal, toItem: cactusImageView!, attribute: .top, multiplier: 1.0, constant: 40))
        
        
//        self.view.addConstraint(NSLayoutConstraint(item: capitulosTableView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 10))
//
//        self.view.addConstraint(NSLayoutConstraint(item: capitulosTableView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 10))
        
        capitulosTableView.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
        
        capitulosTableView.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.6).isActive = true
        
        capitulosTableView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        capitulosTableView.backgroundColor = .clear
        
        capitulosTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        capitulosLabel.font = UIFont(name: "Xilosa", size: 40)
        
        cactusImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
    
    cactusImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    cactusImageView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        
        capitulosTableView.reloadData()
    }

}
