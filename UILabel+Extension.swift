//
//  UILabel+Extension.swift
//  0523
//
//  Created by 최민경 on 5/27/24.
//

import UIKit

extension UILabel {
    
    func setPrimaryLabel() {
        self.font = .boldSystemFont(ofSize: 17)
        self.textAlignment = .left
        self.backgroundColor = .lightGray
        self.textColor = .darkGray
        layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 8
        self.layer.borderWidth = 1
    }
    
}
