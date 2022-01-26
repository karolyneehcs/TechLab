//
//  FirstViewController+Extension.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 24/01/22.
//

import UIKit

extension FirstViewController {
     func SetupUI() {
        
        self.view.addSubview(labelTitulo)
        self.view.addSubview(labelSubtitulo)
        self.view.addSubview(labelUsuario)
        self.view.addSubview(labelSenha)
        self.view.addSubview(buttonEntrar)
        
        NSLayoutConstraint.activate([
            labelTitulo.widthAnchor.constraint(equalToConstant: 229),
            labelTitulo.heightAnchor.constraint(equalToConstant: 59),
            labelTitulo.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 59),
            labelTitulo.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 63),
            
            labelSubtitulo.widthAnchor.constraint(equalToConstant: 257),
            labelSubtitulo.heightAnchor.constraint(equalToConstant: 20),
            labelSubtitulo.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 59),
            
            labelSubtitulo.topAnchor.constraint(equalTo: labelTitulo.bottomAnchor, constant: 8),
            
//            labelUsuario.widthAnchor.constraint(equalToConstant: 324),
            labelUsuario.heightAnchor.constraint(equalToConstant: 52),
            labelUsuario.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            labelUsuario.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            labelUsuario.topAnchor.constraint(equalTo: labelSubtitulo.bottomAnchor, constant: 288),
            
            labelSenha.heightAnchor.constraint(equalToConstant: 52),
            labelSenha.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            labelSenha.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            labelSenha.topAnchor.constraint(equalTo: labelUsuario.bottomAnchor, constant: 50),
            
            buttonEntrar.heightAnchor.constraint(equalToConstant: 50),
            buttonEntrar.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            buttonEntrar.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            buttonEntrar.topAnchor.constraint(equalTo: labelSenha.bottomAnchor, constant: 50)
        ])
    }
}


extension FirstViewController {
    func gradient() {
        let gradientLayer = CAGradientLayer()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "BackgroundInicial")
        backgroundImage.contentMode = .scaleAspectFill
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [ UIColor(red: 0.491, green: 0.133, blue: 1, alpha: 0.5).cgColor,
                                   UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
