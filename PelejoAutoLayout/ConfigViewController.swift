//
//  ConfigViewController.swift
//  PelejoAutoLayout
//
//  Created by Elaine  Cruz on 20/08/20.
//  Copyright © 2020 Elaine  Cruz. All rights reserved.
//

import Foundation

import UIKit

class ConfigViewController: UIViewController {

    @IBOutlet weak var textureImageView: UIImageView!
    @IBOutlet weak var configLabel: UILabel!
    @IBOutlet weak var configPannel: UIImageView!
    @IBOutlet weak var musicaLabel: UILabel!
    @IBOutlet weak var musicaSwitch: UISwitch!
    @IBOutlet weak var sonsLabel: UILabel!
    @IBOutlet weak var sonsSwitch: UISwitch!
    @IBOutlet weak var mountainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textureImageView.translatesAutoresizingMaskIntoConstraints = false
        configLabel.translatesAutoresizingMaskIntoConstraints = false
        configPannel.translatesAutoresizingMaskIntoConstraints = false
        musicaLabel.translatesAutoresizingMaskIntoConstraints = false
        musicaSwitch.translatesAutoresizingMaskIntoConstraints = false
        sonsLabel.translatesAutoresizingMaskIntoConstraints = false
        sonsSwitch.translatesAutoresizingMaskIntoConstraints = false
        mountainImageView.translatesAutoresizingMaskIntoConstraints = false
    
        // Texture Settings
        textureImageView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        textureImageView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        
        //Config Label settings
        configLabel.font = UIFont(name: "Xilosa", size: 40)
        self.view.addConstraint(NSLayoutConstraint(item: configLabel!, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 60))
        configLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        
        //Config Pannel settings
        self.view.addConstraint(NSLayoutConstraint(item: configPannel!, attribute: .top, relatedBy: .equal, toItem: configLabel, attribute: .bottom, multiplier: 1.0, constant: 100))
        configPannel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        configPannel.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.7).isActive = true
 
        configPannel.heightAnchor.constraint(equalToConstant: self.view.frame.width*0.7*0.7).isActive = true
        
        
        let painel = UIView()
        self.view.addSubview(painel)
        painel.addSubview(musicaLabel)
        painel.addSubview(sonsLabel)
        painel.addSubview(musicaSwitch)
        painel.addSubview(sonsSwitch)
        
        painel.translatesAutoresizingMaskIntoConstraints = false
        
        //Painel settings
        painel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        painel.centerYAnchor.constraint(equalTo: configPannel.centerYAnchor).isActive = true
        painel.widthAnchor.constraint(equalToConstant: 164).isActive = true
        painel.heightAnchor.constraint(equalToConstant: 92 ).isActive = true
    
        


        // Musica switch settings
        self.view.addConstraint(NSLayoutConstraint(item: musicaSwitch!, attribute: .top, relatedBy: .equal, toItem: painel, attribute: .top, multiplier: 1.0, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: musicaSwitch!, attribute: .leading, relatedBy: .equal, toItem: musicaLabel, attribute: .trailing, multiplier: 1.0, constant: 60))

       //Musica Label settings
        musicaLabel.font = UIFont(name: "Underdog-Regular", size: 18)
        self.view.addConstraint(NSLayoutConstraint(item: musicaLabel!, attribute: .leading, relatedBy: .equal, toItem: painel, attribute: .leading, multiplier: 1.0, constant: 0))
        musicaLabel.centerYAnchor.constraint(equalTo: musicaSwitch.centerYAnchor).isActive = true
        
        
        
        // Sons Label settings
        sonsLabel.font = UIFont(name: "Underdog-Regular", size: 18)
        self.view.addConstraint(NSLayoutConstraint(item: sonsLabel!, attribute: .top, relatedBy: .equal, toItem: musicaLabel, attribute: .bottom, multiplier: 1.0, constant: 50))
        self.view.addConstraint(NSLayoutConstraint(item: sonsLabel!, attribute: .leading, relatedBy: .equal, toItem: painel, attribute: .leading, multiplier: 1.0, constant: 0))
        
        
        // Sons switch settings
        sonsSwitch.centerXAnchor.constraint(equalTo: musicaSwitch.centerXAnchor).isActive = true
        sonsSwitch.centerYAnchor.constraint(equalTo: sonsLabel.centerYAnchor).isActive = true
        
        // Mountain settings
        mountainImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.view.addConstraint(NSLayoutConstraint(item: mountainImageView!, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 8))
        mountainImageView.widthAnchor.constraint(equalToConstant: self.view.frame.width*0.6).isActive = true
        mountainImageView.heightAnchor.constraint(equalToConstant: self.view.frame.width*0.6*0.74666).isActive = true

    
    }


}
