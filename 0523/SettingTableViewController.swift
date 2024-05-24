//
//  1TableViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    var headerList = ["전체설정", "공지사항", "기타"]
    
//    var list = [[ "공지사항", "실험실", "버전 정보"], [ "개인 설정", "알림", "채팅", "멀티프로필"], ["고객센터/도움말"]]
    var list = [ "공지사항", "실험실", "버전 정보"]
    var list1 = [ "개인 설정", "알림", "채팅", "멀티프로필"]
    var list2 = ["고객센터/도움말"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return list.count
        } else if section == 1 {
            return list1.count
        } else if section == 2 {
            return list2.count
        } else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "Setting")!
        
//        cell.textLabel?.text = list[0][indexPath.row]
        if indexPath.section == 0 {
            cell.textLabel?.text = list[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = list1[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = list2[0]
//            print("오류")
        }

          
        
//        cell.textLabel?.textColor = .black
        cell.textLabel?.font = .boldSystemFont(ofSize: 16)
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return headerList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerList[section]
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        
//        
//        let label = UILabel()
//        label.text = headerList[section]
//        
//        
//        label.frame = CGRect(x: 20, y: 0, width: tableView.frame.width, height: 15)
//        label.textColor = .lightGray
//        label.font = .systemFont(ofSize: 15)
//        headerView.addSubview(label)
//        return headerView
//    }
    
    
    
    
    
}
