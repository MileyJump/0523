//
//  1TableViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

enum SettingOtinos: Int, CaseIterable {
 case total, personal, others
    
    var mainOptions: String {
        switch self {
        case .total:
            return "전체설정"
        case .personal:
            return "공지사항"
        case .others:
            return "기타"
        }
    }
    
    var subOptions: [String] {
        switch self {
        case .total:
            return ["공지사항", "실험실", "버전 정보"]
        case .personal:
            return ["개인/보안", "알림", "채팅", "멀티프로필"]
        case .others:
            return ["고객센터/도움말"]
        }
    }
}


class SettingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingOtinos.allCases[section].subOptions.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Setting")!
        

        cell.textLabel?.text = SettingOtinos.allCases[indexPath.section].subOptions[indexPath.row]
        
        cell.textLabel?.font = .boldSystemFont(ofSize: 16)
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return SettingOtinos.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SettingOtinos.allCases[section].mainOptions
    }
}
