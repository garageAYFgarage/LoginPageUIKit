//
//  Label.swift
//  LoginPageUIKit
//
//  Created by FARAFON on 11.03.2026.
//

import UIKit

class Label: UILabel {
    init(text: String, color: UIColor = .white, font: UIFont ) {
        super.init(frame:.zero)
        
        self.text = text
        self.textColor = color
        self.font = font
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
