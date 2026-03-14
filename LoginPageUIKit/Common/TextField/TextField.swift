//
//  TextField.swift
//  LoginPageUIKit
//
//  Created by FARAFON on 11.03.2026.
//

import UIKit

final class TextField: UITextField {
    init(image: String, placeholder: String, isPassword: Bool = false) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isSecureTextEntry = isPassword
        setupPlaceholder(placeholder: placeholder)
        backgroundColor = .gray
        setupLeftView(image: image)
        
        
    }
    
    private let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    
    private func setupPlaceholder(placeholder: String) {
          attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [
            .foregroundColor: UIColor.lightGray,
          ])
    }
    
    private func setupLeftView(image: String) {
        let leftIconView = {
            $0.image = UIImage(systemName: image)
            $0.contentMode = .scaleAspectFit
            $0.clipsToBounds = true
            $0.tintColor = .lightGray
            $0.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            return $0
        }(UIImageView())
        
        let leftContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 20))
        leftContainerView.addSubview(leftIconView)
        leftIconView.center = leftContainerView.center
        
        leftView = leftContainerView
        leftViewMode = .always
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
