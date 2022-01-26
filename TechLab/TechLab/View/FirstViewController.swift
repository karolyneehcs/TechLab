//
//  ViewController.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 17/01/22.
//

import UIKit

protocol FirstView: AnyObject {
    func showError(with message: String)
}

class FirstViewController: UIViewController {
    
//    var presenter: FirstViewPresenter = FirstViewPresenter(view: FirstView(), delegate: FirstViewPresenterDelegate())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient()
        SetupUI()
        
        // Do any additional setup after loading the view.
        
    }
    
    //MARK: Properties

    lazy var labelTitulo : UILabel = {
        let labelTitutlo = UILabel()
        labelTitutlo.frame = CGRect(x: 0, y: 0, width: 229, height: 59)
        labelTitutlo.backgroundColor = .clear
        labelTitutlo.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        labelTitutlo.font = UIFont(name: "DMSans-Bold", size: 45)
        labelTitutlo.textAlignment = .center
        labelTitutlo.text = "Meu Beats"
        labelTitutlo.translatesAutoresizingMaskIntoConstraints = false
        return labelTitutlo
    }()
    
    lazy var labelSubtitulo: UILabel = {
        let labelSubtitulo = UILabel()
        labelSubtitulo.frame = CGRect(x: 0, y: 0, width: 257, height: 20)
        labelSubtitulo.backgroundColor = .clear
        labelSubtitulo.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        labelSubtitulo.font = UIFont(name: "DMSans-Bold", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.1
        labelSubtitulo.textAlignment = .center
        labelSubtitulo.attributedText = NSMutableAttributedString(string: "Especializados em fones para deejay", attributes: [NSAttributedString.Key.kern: 0.2, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        labelSubtitulo.translatesAutoresizingMaskIntoConstraints = false
        return labelSubtitulo
    }()
    
    lazy var labelUsuario : UITextField = {
        let labelUsuario = UITextField()
        labelUsuario.backgroundColor = .clear
        labelUsuario.layer.borderColor = UIColor(red: 187, green: 134, blue: 252, alpha: 1).cgColor
        labelUsuario.layer.cornerRadius = 2.0
        labelUsuario.borderStyle = .roundedRect
        labelUsuario.layer.borderWidth = 2.0
        labelUsuario.borderRect(forBounds: CGRect(x: 0, y: 0, width: 52, height: 326))
        labelUsuario.translatesAutoresizingMaskIntoConstraints = false
        return labelUsuario
    }()
    
    lazy var labelSenha : UITextField = {
        let labelSenha = UITextField()
        labelSenha.backgroundColor = .clear
        labelSenha.layer.borderColor = UIColor(red: 187, green: 134, blue: 252, alpha: 1).cgColor
        labelSenha.layer.cornerRadius = 2.0
        labelSenha.borderStyle = .roundedRect
        labelSenha.layer.borderWidth = 2.0
        labelSenha.translatesAutoresizingMaskIntoConstraints = false
        return labelSenha
    }()
    
    lazy var buttonEntrar : UIButton = {
        let buttonEntrar = UIButton()
        buttonEntrar.setTitle("Entrar", for: .normal)
        buttonEntrar.titleColor(for: .normal)
        buttonEntrar.backgroundColor = .white
        buttonEntrar.layer.backgroundColor = UIColor(red: 0.384, green: 0, blue: 0.933, alpha: 1).cgColor
        buttonEntrar.layer.cornerRadius = 25
        buttonEntrar.clipsToBounds = true
        buttonEntrar.translatesAutoresizingMaskIntoConstraints = false
        return buttonEntrar
    }()
}


