//
//  UIElementsFactory.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 24.10.2023.
//

import UIKit

class UIElementsFactory {
    static func createCustomLabel(text: String, size: CGFloat, color: UIColor) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = color
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.text = text
        return label
    }
    
    static func createCustomImage(color: UIColor, systemName: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.tintColor = color
        imageView.image = UIImage(systemName: systemName)
        return imageView
    }
    
    static func stackView(axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, spacing: CGFloat) -> UIStackView {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = axis
        view.distribution = distribution
        view.spacing = spacing
        view.alignment = .center
        return view
    }
    
    static func searchBar(viewSize: CGFloat) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.placeholder = "Search food"
        searchBar.barTintColor = .lightGray
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.textColor = .black
        searchBar.searchTextField.font = UIFont.systemFont(ofSize: 16)
        searchBar.searchTextField.layer.cornerRadius = (viewSize * 0.1) / 2
        searchBar.searchTextField.layer.masksToBounds = true
        searchBar.layer.masksToBounds = true
        searchBar.searchTextPositionAdjustment = .init(horizontal: 8, vertical: 0)
        return searchBar
    }
    
    static func collectionView(itemWidth: CGFloat, itemHeight: CGFloat ) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 8, left: 18, bottom: 8, right: 0)
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.isScrollEnabled = true
        collectionView.isUserInteractionEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }
    
    static func tableView(rowHeight: CGFloat) -> UITableView {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.rowHeight = rowHeight
        tableView.isScrollEnabled = false
        tableView.separatorColor = .clear
        return tableView
    }
    
    private init() {
        
    }
}
