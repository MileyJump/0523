//
//  FoodViewController.swift
//  0523
//
//  Created by 최민경 on 5/27/24.
//

import UIKit
/*
 1. tableView 아울렛 선언
 2. tableView 부하직원 선언 - 델리게이트, 데이트소스 : protocol
 3. 부하직원과 테이블뷰 연결 : 타입으로서의 protocol
 4. XIB Cell : 여러 테이블뷰에 재사용
 5. XIB register : 사용 등록
 */

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var foodTableView: UITableView!
    
    var list = RestaurantList().restaurantArray
    var filteredList: [Restaurant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 뷰컨 확장 활용 예시
//        setBackground()
        
        let left = UIBarButtonItem(title: "한식만", style: .plain, target: self, action: #selector(leftBarButtonClicked))
        let all = UIBarButtonItem(title: "전체보기", style: .plain, target: self, action: #selector(allBarButtonClicked))
        
        navigationItem.leftBarButtonItems = [ left, all ]
        
        foodTableView.rowHeight = 120
        
        // TableView의 부하직원 연결 😈
        foodTableView.dataSource = self
        foodTableView.delegate = self
        
        // SearchBar 부하직원 연결 😈
        searchBar.delegate = self
        
        let xib = UINib(nibName: "FoodTableViewCell", bundle: nil)
        // 셀 등록
        foodTableView.register(xib, forCellReuseIdentifier: "FoodTableViewCell")
        filteredList = list
    }
    
    @objc func allBarButtonClicked() {
        filteredList = list
        foodTableView.reloadData()
        showAlert(title: "전체보기로 설정하셨습니다.")
    }
    
    @objc func leftBarButtonClicked() {
        // list > 반복문 > 한식 > 갱신
        var koreanFood: [Restaurant] = []
        for item in list {
            if item.category == "한식" {
                koreanFood.append(item)
            }
        }
        
        showAlert(title: "한식 버튼을 클릭했습니다.")
        
        filteredList = koreanFood
        foodTableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let text = searchBar.text else { return }
        
        var searchList: [Restaurant] = []
        // contains : 포함 되어 있는지 확인 여부
        // == 같다 대신 contains를 사용 -> 모든 내용이 같아야 하기 때문에 == 는 잘 사용하지 않음
        for item in list {
            if item.name.contains(text) || item.category.contains(text) {
                
                searchList.append(item)
            }
        }
        print("================asdfasdfasdfasdfasdfasfdads\(searchList)")
//        filteredList = searchList
//        foodTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTableViewCell", for: indexPath) as! FoodTableViewCell
    
        cell.configureCell(data: filteredList[indexPath.row])
        
        return cell
    }
}
