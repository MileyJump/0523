//
//  UIViewController+Extension.swift
//  0523
//
//  Created by 최민경 on 5/27/24.
//

import UIKit

extension UIViewController {
    
    func setBackground() {
        view.backgroundColor = .lightGray
    }
    
    func showAlert(title: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
    }
    
}
