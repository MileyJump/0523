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
        
        tableView.rowHeight = 70
    }
    
    // 옵션: 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // 옵션: 섹션 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Apple" : "Mentor"
        //=> 조건 ? true : false
    }
    // 1. 셀의 갯수(필수) : numberOfRowsInSection
    // ex. 카카오톡 100명
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        if section == 0 {
            return list.count
        } else if section == 1 {
            return 100
        }
        return 0
    }
    
    // 2. 셀의 높이(약간 필수 권장)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        
        //        return indexPath.section == 0 ? 44 : 80
        //        return indexPath.row == 0 ? 44 : 80
        return 70
    }
    
    // 3. 셀의 디자인 및 데이터 처리
    // ex. 카카오톡 친구 이름. 프로필 사진. 상태 메세지 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        
        // 3-1. 어떤 셀을 쓸 지 결정
        // 재사용 메커니즘
        
        
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "jackCell")!
            
            cell.imageView?.image = UIImage(systemName: "star.fill")
            cell.imageView?.tintColor = .red
            cell.textLabel?.text = list[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "denCell")!
            
            cell.imageView?.image = UIImage(systemName: "person")
            cell.imageView?.tintColor = .green
            cell.textLabel?.text = "baba"
            
            cell.textLabel?.textColor = .brown
            cell.textLabel?.font = .boldSystemFont(ofSize: 20)
            
            
            cell.detailTextLabel?.text = "iOS 앱개발자 데뷔과정"
            cell.detailTextLabel?.textColor = .lightGray
            cell.detailTextLabel?.font = .boldSystemFont(ofSize: 15)
            if indexPath.row < 4 { // 재사용 메커니즘
                cell.backgroundColor = .lightGray
            } else {
                cell.backgroundColor = .white
            }
            return cell
            //            cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray.withAlphaComponent(0.7) : .white
        }
        
    }
}
