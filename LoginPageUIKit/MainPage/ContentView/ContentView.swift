//
//  ContentView.swift
//  LoginPageUIKit
//
//  Created by FARAFON on 14.03.2026.
//

import UIKit

final class ContentView: UIView {
    lazy var titleLabel = Label(text: "Welcome \nBack!", font: .systemFont(ofSize: 40, weight: .bold))
    lazy var signInLabel = Label(text: "Sign In!", font: .systemFont(ofSize: 25, weight: .bold))
    
    lazy var emailField = TextField(image: "person", placeholder: "Username or Email")
    lazy var passwordField = TextField(image: "lock.fill", placeholder: "Password", isPassword: true)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewDidLoad()
        setConstraints()
    }
    
    private func viewDidLoad() {
        self.backgroundColor = .systemGray
        addSubview(emailField)
        
    }
    
    private func setConstraints() {
       NSLayoutConstraint.activate([
            emailField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            emailField.centerYAnchor.constraint(equalTo: centerYAnchor),
            emailField.heightAnchor.constraint(equalToConstant: 54)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
