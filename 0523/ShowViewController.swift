//
//  ShowViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

class ShowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Show \(#function)")
       
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Show \(#function)")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Show \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Show \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Show \(#function)")
    }

    

}
