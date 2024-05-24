//
//  SimpleTableViewController.swift
//  0523
//
//  Created by 최민경 on 5/23/24.
//

import UIKit

class SimpleTableViewController: UITableViewController {
    
    var list = ["iOS", "iPadOS", "watchOs", "기타"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 1. 셀의 갯수(필수) : numberOfRowsInSection
    // ex. 카카오톡 100명
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return list.count
    }
    
    // 2. 셀의 높이(약간 필수 권장)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        
        return 80
    }
    
    // 3. 셀의 디자인 및 데이터 처리
    // ex. 카카오톡 친구 이름. 프로필 사진. 상태 메세지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        
        // 3-1. 어떤 셀을 쓸 지 결정
        // 재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "jackCell")!
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        cell.imageView?.tintColor = .red
        
//        if indexPath.row == 0 {
//            cell.textLabel?.text = list[0]
//            cell.textLabel?.textColor = .systemPink
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[1]
//            cell.textLabel?.textColor = .red
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = list[2]
//            cell.textLabel?.textColor = .blue
//        } else {
//            cell.textLabel?.text = list[3]
//            cell.textLabel?.textColor = .black
//        }
//        
        cell.textLabel?.text = list[indexPath.row]
        
        cell.textLabel?.textColor = .brown
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        
        

        
        cell.detailTextLabel?.text = "iOS 앱개발자 데뷔과정"
        cell.detailTextLabel?.textColor = .lightGray
        cell.detailTextLabel?.font = .boldSystemFont(ofSize: 15)
        
        return cell
        
        
        
        
    }
    
    
}
