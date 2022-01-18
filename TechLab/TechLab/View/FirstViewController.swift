//
//  ViewController.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 17/01/22.
//

import UIKit

protocol FirstView: class {
    func setTextFieldHint(_ hint: String)
    func setButtonText(_ text: String)
    func showError(with message: String)
}

class FirstViewController: UIViewController {
    
    var presenter: FirstViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        presenter.load()
        // Do any additional setup after loading the view.
    }
}

extension FirstViewController: FirstView {

    func setTextFieldHint(_ hint: String) {
        nameTextField.placeholder = hint
    }
        
    func setButtonText(_ text: String) {
        submitButton.setTitle(text, for: .normal)
    }
        
}
