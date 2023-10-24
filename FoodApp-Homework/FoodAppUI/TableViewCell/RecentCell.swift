//
//  RecentCell.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 23.10.2023.
//

import UIKit

class RecentCell: UITableViewCell {

    lazy var popularImage: UIImageView = {
        let imageView = UIImageView()
         imageView.backgroundColor = .clear
         imageView.translatesAutoresizingMaskIntoConstraints = false
         return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
       return label
   }()
    
    lazy var starImage: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemOrange
        imageView.image = UIImage(systemName: "star.fill")
        return imageView
    }()
    
    lazy var starLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemOrange
        label.font = UIFont.systemFont(ofSize: 11, weight: .medium)
       return label
   }()
    
    lazy var ratingLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
       return label
   }()
    
    lazy var typeLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
       return label
   }()
    
    lazy var foodTypeLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
       return label
   }()
    
    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.alignment = .center
        return view
    }()
    lazy var stackView2: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.alignment = .center
        return view
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(popularImage)
        addSubview(nameLabel)
        addSubview(stackView)
        stackView.addArrangedSubview(typeLabel)
        stackView.addArrangedSubview(foodTypeLabel)
        addSubview(stackView2)
        stackView2.addArrangedSubview(starImage)
        stackView2.addArrangedSubview(starLabel)
        stackView2.addArrangedSubview(ratingLabel)

        
        NSLayoutConstraint.activate([
            popularImage.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            popularImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 18),
            popularImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            popularImage.widthAnchor.constraint(equalToConstant: 85),
            
            starImage.heightAnchor.constraint(equalToConstant: 12),
            starImage.widthAnchor.constraint(equalToConstant: 12),
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            nameLabel.leftAnchor.constraint(equalTo: popularImage.rightAnchor, constant: 18),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -18),
            
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            stackView.leftAnchor.constraint(equalTo: popularImage.rightAnchor, constant: 18),
            stackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            
            stackView2.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 5),
            stackView2.leftAnchor.constraint(equalTo: popularImage.rightAnchor, constant: 18),
            stackView2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
            

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
