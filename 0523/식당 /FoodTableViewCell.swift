//
//  FoodTableViewCell.swift
//  0523
//
//  Created by 최민경 on 5/27/24.
//

import UIKit
import Kingfisher

class FoodTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var favoriteButton: UIButton!
    
    // 한 번에 셋팅
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLayout()
    }
    
    func configureLayout() {
        print(#function)
        
        // 레이블 확장 활용 예시
//        titleLabel.setPrimaryLabel()
//        subTitleLabel.setPrimaryLabel()
//        descriptionLabel.setPrimaryLabel()
        
        titleLabel.font = .boldSystemFont(ofSize: 17)
        subTitleLabel.font = .systemFont(ofSize: 13)
        subTitleLabel.textColor = .darkGray
        descriptionLabel.font = .boldSystemFont(ofSize: 20)
        descriptionLabel.textColor = .blue
        mainImageView.backgroundColor = .lightGray
        
    }
    
    func configureCell(data: Restaurant) {
        print(#function)
        titleLabel.text = "\(data.name)  | \(data.category)"
        subTitleLabel.text = data.address
        descriptionLabel.text = data.price.formatted() + "원"
        let url = URL(string: data.image)
        mainImageView.kf.setImage(with: url, placeholder: UIImage(systemName: "star"))
        mainImageView.contentMode = .scaleAspectFill
        
        
    }
    
    
    
}
