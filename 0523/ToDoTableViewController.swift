//
//  ToDoTableViewController.swift
//  0523
//
//  Created by 최민경 on 5/24/24.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    @IBOutlet var addButton: UIButton!
    @IBOutlet var addTextField: UITextField!
    
    var list = ["장보기", "영화보기","과제하기", "복습하기", "잠자기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        
    }
    // 2. addButton 클릭 > TextField text 가져오기 > list apped
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // implicit return
        return list.count
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell")!
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "가나다라마바사"
        return cell
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        
        guard let text = addTextField.text, text.count > 1 else {
            print("두 글자 이상 입력해주세요")
            return
        }
        
        list.append(text)
        addTextField.text = ""
        print(list)
        
        // 데이터와 뷰는 따로 놀기 때문에, 데이터가 달라지면 뷰를 다시 갱신해주어야 한다.
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        list.remove(at: indexPath.row)
        
        tableView.reloadData()
    }
}
