//
//  ModalViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Modal \(#function)")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Modal \(#function)")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Modal \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Modal \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Modal \(#function)")
    }


}
