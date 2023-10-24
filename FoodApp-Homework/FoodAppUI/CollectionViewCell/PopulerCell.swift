//
//  PopulerCell.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 23.10.2023.
//

import UIKit

class PopulerCell: UICollectionViewCell {
    lazy var mostImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
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
        view.spacing = 5
        return view
    }()
    
    private func addViews() {
        backgroundColor = .clear
        addSubview(mostImageView)
        addSubview(nameLabel)
        addSubview(stackView)
        stackView.addArrangedSubview(typeLabel)
        stackView.addArrangedSubview(foodTypeLabel)
        stackView.addArrangedSubview(starImage)
        stackView.addArrangedSubview(starLabel)
        
        NSLayoutConstraint.activate([
            mostImageView.topAnchor.constraint(equalTo: topAnchor),
            mostImageView.leftAnchor.constraint(equalTo: leftAnchor),
            mostImageView.rightAnchor.constraint(equalTo: rightAnchor),
            mostImageView.heightAnchor.constraint(equalToConstant: 135),
            
            nameLabel.topAnchor.constraint(equalTo: mostImageView.bottomAnchor, constant: 8),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor),
            
            starImage.heightAnchor.constraint(equalToConstant: 15),
            starImage.widthAnchor.constraint(equalToConstant: 15),
            
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            stackView.leftAnchor.constraint(equalTo: leftAnchor),
            stackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.75),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
