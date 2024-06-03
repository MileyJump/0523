//
//  SearchTableViewController.swift
//  0523
//
//  Created by 최민경 on 5/24/24.
//

import UIKit

struct Travel {
    let country: String
    let money: Int
    var like: Bool
    
    
}


class SearchTableViewController: UITableViewController {
    
    var list = [
        Travel(country: "프랑스", money: 100300500, like: true),
        Travel(country: "일본", money: 6543450, like: false),
        Travel(country: "영국", money: 67676760000, like: true),
        Travel(country: "네덜란드", money: 1000, like: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //Swfit type Casting
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        
        let data = list[indexPath.row]
        
        cell.titleLabel.text = data.country
        cell.titleLabel.font = .boldSystemFont(ofSize: 28)
        
        cell.subtitleLabel.text = data.money.formatted()
        cell.subtitleLabel.font = .systemFont(ofSize: 14)
        cell.subtitleLabel.textColor = .darkGray
        
        let name = data.like ? "heart.fill" : "heart"
        let image = UIImage(systemName: name)
        cell.likeButton.setImage(image, for: .normal)
        cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
        
        cell.posterImageview.layer.cornerRadius = 10
        cell.posterImageview.backgroundColor = .lightGray
        
        
        cell.likeButton.tag = indexPath.row
        
        return cell
    }
    
    @objc func likeButtonClicked(sender: UIButton){
        // 어떤 버튼을 클릭해도 프랑스가 true로
        list[sender.tag].like.toggle()
//        list[0].like = !list[0].like
        
        print(sender.tag)
        
//        tableView.reloadData()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .automatic)
    }
    
    
}


 
