//
//  FirstViewPresenter.swift
//  TechLab
//
//  Created by Ana Karolina Costa da Silva on 18/01/22.
//

import UIKit

protocol FirstViewPresenterDelegate: AnyObject {
  
}

class FirstViewPresenter {
    
    let view: FirstView
    weak var delegate: FirstViewPresenterDelegate?
    
    init(view: FirstView, delegate: FirstViewPresenterDelegate?) {
        self.view = view
        self.delegate = delegate
    }
    
    func load() {
//        view.setBtnText("Submit!!!")
//        view.setTextFieldHint("Tell me your name")
    }
    
    func persist(userName: String?) {
        guard let userName = userName, !userName.isEmpty else {
            view.showError(with: "Fill field correctly!")
            return
        }
        
    }
}
