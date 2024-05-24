//
//  HateViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

class HateViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hate \(#function)")
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Hate \(#function)")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Hate \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Hate \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Hate \(#function)")
    }
    

    @IBAction func hateButtonClicked(_ sender: UIButton) {
        // 1. UserDefaults에서 가져오기
        let origin = UserDefaults.standard.integer(forKey: "hate")
        print("기존: \(origin)")
        // 2. 1에 값 + 1 더해주기
        let update = origin + 1
        // 3. 수정된 값 다시 UserDefaults에 저장하기
        UserDefaults.standard.setValue(update, forKey: "hate")
        
        print(UserDefaults.standard.integer(forKey: "hate"))
        
    }
    

}
