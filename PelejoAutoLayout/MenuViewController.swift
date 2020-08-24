//
//  MenuViewController.swift
//  PelejoAutoLayout
//
//  Created by Elaine  Cruz on 18/08/20.
//  Copyright © 2020 Elaine  Cruz. All rights reserved.
//

import Foundation
import UIKit


let cfURL = Bundle.main.url(forResource: "Underdog-Regular", withExtension: "ttf")! as CFURL

let cfURL2 = Bundle.main.url(forResource: "xilosa_", withExtension: "ttf")! as CFURL



class MenuViewController: UIViewController {

    @IBOutlet weak var textureImageView: UIImageView!
    @IBOutlet weak var sunImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var capitulos: UIButton!
    @IBOutlet weak var conquistas: UIButton!
    @IBOutlet weak var configuracoes: UIButton!
    @IBOutlet weak var familyImageView: UIImageView!
    
    @IBAction func TouchCap(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
        CTFontManagerRegisterFontsForURL(cfURL2, CTFontManagerScope.process, nil)
    
       textureImageView.translatesAutoresizingMaskIntoConstraints = false
       sunImageView.translatesAutoresizingMaskIntoConstraints = false
       titleLabel.translatesAutoresizingMaskIntoConstraints = false
       capitulos.translatesAutoresizingMaskIntoConstraints = false
       conquistas.translatesAutoresizingMaskIntoConstraints = false
       configuracoes.translatesAutoresizingMaskIntoConstraints = false
       familyImageView.translatesAutoresizingMaskIntoConstraints = false
       
       
        textureImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        textureImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        
       sunImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        sunImageView.widthAnchor.constraint(equalToConstant: self.view.frame.width/3).isActive = true
       sunImageView.heightAnchor.constraint(equalToConstant: self.view.frame.height/5).isActive = true
       

       titleLabel.font = UIFont(name: "Xilosa", size: 40)
       titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       self.view.addConstraint(NSLayoutConstraint(item: titleLabel!, attribute: .top, relatedBy: .equal, toItem: sunImageView!, attribute: .bottom, multiplier: 1.0, constant: 1))
       
       capitulos.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       capitulos.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
       capitulos.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.1).isActive = true
       self.view.addConstraint(NSLayoutConstraint(item: capitulos!, attribute: .top, relatedBy: .equal, toItem: titleLabel!, attribute: .bottom, multiplier: 1.0, constant: 50))
       capitulos.titleLabel?.font = UIFont(name: "Underdog-Regular", size: 20)
        
       conquistas.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       conquistas.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
       conquistas.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.1).isActive = true
       self.view.addConstraint(NSLayoutConstraint(item: conquistas!, attribute: .top, relatedBy: .equal, toItem: capitulos!, attribute: .bottom, multiplier: 1.0, constant: 30))
       conquistas.titleLabel?.font = UIFont(name: "Underdog-Regular", size: 20)
       
       configuracoes.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       configuracoes.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
       configuracoes.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.1).isActive = true
       self.view.addConstraint(NSLayoutConstraint(item: configuracoes!, attribute: .top, relatedBy: .equal, toItem: conquistas!, attribute: .bottom, multiplier: 1.0, constant: 30))
       configuracoes.titleLabel?.font = UIFont(name: "Underdog-Regular", size: 20)
       
       familyImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
       familyImageView.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
       familyImageView.heightAnchor.constraint(equalToConstant: self.view.frame.height*0.2).isActive = true
       familyImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true


    }
}


