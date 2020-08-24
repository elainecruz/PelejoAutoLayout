//
//  ConquistasViewController.swift
//  PelejoAutoLayout
//
//  Created by Elaine  Cruz on 20/08/20.
//  Copyright © 2020 Elaine  Cruz. All rights reserved.
//

import Foundation
import UIKit

class ConquistasViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    @IBOutlet weak var sunImageView: UIImageView!
    @IBOutlet weak var conquistasLabel: UILabel!
    var conquistasCollectionView: UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundView = UIImageView (image: UIImage(named:"Conquista"))
        return myCell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sunImageView.translatesAutoresizingMaskIntoConstraints = false
        conquistasLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        sunImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //sunImageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        sunImageView.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.7).isActive = true
        self.view.addConstraint(NSLayoutConstraint(item: sunImageView!, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: -45))
        
        
        conquistasLabel.font = UIFont(name: "Xilosa", size: 40)
        conquistasLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraint(NSLayoutConstraint(item: conquistasLabel!, attribute: .top, relatedBy: .equal, toItem: sunImageView, attribute: .bottom, multiplier: 1.0, constant: 20))
        
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.scrollDirection = .vertical
          
          // Inicializando Collection com o tamanho e layout desejado
        conquistasCollectionView = UICollectionView(frame: CGRect(x: 20, y: conquistasLabel.frame.maxY+50, width: self.view.frame.width*0.7, height: self.view.frame.height*0.5), collectionViewLayout: layout)
        conquistasCollectionView.center = self.view.center
        
        conquistasCollectionView.translatesAutoresizingMaskIntoConstraints = false
        //conquistasCollectionView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //conquistasCollectionView.widthAnchor.constraint(equalToConstant: self.view.frame.width*07).isActive = true
        //: Registrando qual a classe que será usada para desenhar cada célula do UICollectionView
        conquistasCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        conquistasCollectionView?.dataSource = self
        conquistasCollectionView?.backgroundColor = .clear
        conquistasCollectionView?.delegate = self
        self.view.addSubview(conquistasCollectionView)
    }

}
