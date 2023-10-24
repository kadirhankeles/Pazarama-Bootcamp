//
//  PopularRestaurentsCell.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 23.10.2023.
//

import UIKit

class PopularRestaurentsCell: UITableViewCell {
    
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
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(popularImage)
        addSubview(nameLabel)
        addSubview(stackView)
        stackView.addArrangedSubview(starImage)
        stackView.addArrangedSubview(starLabel)
        stackView.addArrangedSubview(ratingLabel)
        stackView.addArrangedSubview(typeLabel)
        addSubview(foodTypeLabel)
        
        NSLayoutConstraint.activate([
            popularImage.topAnchor.constraint(equalTo: topAnchor),
            popularImage.leftAnchor.constraint(equalTo: leftAnchor),
            popularImage.rightAnchor.constraint(equalTo: rightAnchor),
            popularImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            
            nameLabel.topAnchor.constraint(equalTo: popularImage.bottomAnchor, constant: 8),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 18),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -18),
            
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 18),
            stackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.35),
            
            foodTypeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            foodTypeLabel.leftAnchor.constraint(equalTo: stackView.rightAnchor, constant: 16),
            foodTypeLabel.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 1)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
