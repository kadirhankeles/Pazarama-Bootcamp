//
//  TopCollectionViewCell.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 20.10.2023.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
    
    let globalImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .darkGray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private func addViews() {
        backgroundColor = .clear
        addSubview(globalImageView)
        addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            globalImageView.topAnchor.constraint(equalTo: topAnchor),
            globalImageView.leftAnchor.constraint(equalTo: leftAnchor),
            globalImageView.rightAnchor.constraint(equalTo: rightAnchor),
            globalImageView.heightAnchor.constraint(equalToConstant: 88),
            
            nameLabel.topAnchor.constraint(equalTo: globalImageView.bottomAnchor, constant: 8),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
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
