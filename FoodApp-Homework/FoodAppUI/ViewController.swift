//
//  ViewController.swift
//  FoodAppUI
//
//  Created by Kadirhan Keles on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var scrollView : UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height)
        return view
    }()
    
    private lazy var stackView = UIElementsFactory.stackView(axis: .horizontal, distribution: .equalSpacing, spacing: 0)
    private lazy var stackView1 = UIElementsFactory.stackView(axis: .horizontal, distribution: .equalSpacing, spacing: 10)
    private lazy var nameLabel = UIElementsFactory.createCustomLabel(text: "Good Morning Akila!", size: 20, color: .darkGray)
    private lazy var cartImage = UIElementsFactory.createCustomImage(color: .darkGray, systemName: "cart.fill")
    private lazy var lightLabel = UIElementsFactory.createCustomLabel(text: "Delivering to", size: 11, color: .lightGray)
    private lazy var darkLabel = UIElementsFactory.createCustomLabel(text: "Current Location", size: 16, color: .darkGray)
    private lazy var downArrowImage = UIElementsFactory.createCustomImage(color: .systemOrange, systemName: "chevron.down")
    private lazy var searchBar = UIElementsFactory.searchBar(viewSize: view.bounds.width)
    private lazy var topCollectionView = UIElementsFactory.collectionView(itemWidth: 95, itemHeight: 115)
    private lazy var populerLabel = UIElementsFactory.createCustomLabel(text: "Popular Restaurents", size: 20, color: .darkGray)
    private lazy var populer2Label = UIElementsFactory.createCustomLabel(text: "View all", size: 13, color: .systemOrange)
    private lazy var popularTableView = UIElementsFactory.tableView(rowHeight: view.bounds.width * 0.7)
    private lazy var mostPopulerLabel = UIElementsFactory.createCustomLabel(text: "Most Popular", size: 20, color: .darkGray)
    private lazy var mostPopuler2Label = UIElementsFactory.createCustomLabel(text: "View all", size: 13, color: .systemOrange)
    private lazy var mostCollectionView = UIElementsFactory.collectionView(itemWidth: 228, itemHeight: 185)
    private lazy var recentLabel = UIElementsFactory.createCustomLabel(text: "Recent Items", size: 26, color: .darkGray)
    private lazy var recent2Label = UIElementsFactory.createCustomLabel(text: "View all", size: 13, color: .systemOrange)
    private lazy var recentTableView = UIElementsFactory.tableView(rowHeight: view.bounds.width * 0.25)
    
    var globalFoods = [GlobalFood]()
    var popularRestaurents = [PopularRestaurent]()
    var mostPopular = [MostPopular]()
    var recentItems = [PopularRestaurent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setupUI()
    }
    
    private func configure() {
        mostCollectionView.delegate = self
        mostCollectionView.dataSource = self
        mostCollectionView.register(PopulerCell.self, forCellWithReuseIdentifier: "popularCell")
        
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        topCollectionView.register(TopCollectionViewCell.self, forCellWithReuseIdentifier: "topCollectionViewCell")
        
        popularTableView.dataSource = self
        popularTableView.delegate = self
        popularTableView.register(PopularRestaurentsCell.self, forCellReuseIdentifier: "popularRestaurentsCell")
        
        recentTableView.dataSource = self
        recentTableView.delegate = self
        recentTableView.register(RecentCell.self, forCellReuseIdentifier: "recentCell")
        
        globalFoods = DataLoader.loadGlobalFoods()
        popularRestaurents = DataLoader.loadPopulerRestaurents()
        mostPopular = DataLoader.loadMostPopular()
        recentItems = DataLoader.loadRecentItems()        
    }
    
    private func setupUI() {
        view.addSubview(scrollView)
        view.backgroundColor = .white
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(cartImage)
        scrollView.addSubview(lightLabel)
        scrollView.addSubview(stackView1)
        stackView1.addArrangedSubview(darkLabel)
        stackView1.addArrangedSubview(downArrowImage)
        scrollView.addSubview(searchBar)
        scrollView.addSubview(topCollectionView)
        scrollView.addSubview(populerLabel)
        scrollView.addSubview(populer2Label)
        scrollView.addSubview(popularTableView)
        scrollView.addSubview(mostPopulerLabel)
        scrollView.addSubview(mostPopuler2Label)
        scrollView.addSubview(mostCollectionView)
        scrollView.addSubview(recentLabel)
        scrollView.addSubview(recent2Label)
        scrollView.addSubview(recentTableView)
        
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -18),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            stackView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1),
            
            cartImage.heightAnchor.constraint(equalToConstant: 24),
            cartImage.widthAnchor.constraint(equalToConstant: 24),
            
            lightLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 18),
            lightLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            
            stackView1.topAnchor.constraint(equalTo: lightLabel.bottomAnchor),
            stackView1.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            stackView1.widthAnchor.constraint(equalToConstant: 170 ),
            //stackView1.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.05),

            downArrowImage.widthAnchor.constraint(equalToConstant: 18),
            
            
            searchBar.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10),
            searchBar.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            searchBar.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -18),
            searchBar.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            
            topCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            topCollectionView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            topCollectionView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            topCollectionView.heightAnchor.constraint(equalToConstant: 150),
            
            populerLabel.topAnchor.constraint(equalTo: topCollectionView.bottomAnchor, constant: 18),
            populerLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            
            populer2Label.topAnchor.constraint(equalTo: topCollectionView.bottomAnchor, constant: 18),
            populer2Label.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -18),
            populer2Label.heightAnchor.constraint(equalTo: populerLabel.heightAnchor),
            
            popularTableView.topAnchor.constraint(equalTo: populerLabel.bottomAnchor, constant: 24),
            popularTableView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            popularTableView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            popularTableView.heightAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 2.1),
            
            mostPopulerLabel.topAnchor.constraint(equalTo: popularTableView.bottomAnchor, constant: 18),
            mostPopulerLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            
            mostPopuler2Label.topAnchor.constraint(equalTo: popularTableView.bottomAnchor, constant: 18),
            mostPopuler2Label.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -18),
            mostPopuler2Label.heightAnchor.constraint(equalTo: mostPopulerLabel.heightAnchor),
            
            
            mostCollectionView.topAnchor.constraint(equalTo: mostPopulerLabel.bottomAnchor, constant: 8),
            mostCollectionView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            mostCollectionView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            mostCollectionView.heightAnchor.constraint(equalToConstant: 220),
            
            recentLabel.topAnchor.constraint(equalTo: mostCollectionView.bottomAnchor, constant: 18),
            recentLabel.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            
            recent2Label.topAnchor.constraint(equalTo: mostCollectionView.bottomAnchor, constant: 18),
            recent2Label.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -18),
            recent2Label.heightAnchor.constraint(equalTo: recentLabel.heightAnchor),
            
            recentTableView.topAnchor.constraint(equalTo: recentLabel.bottomAnchor, constant: 16),
            recentTableView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            recentTableView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            recentTableView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            recentTableView.heightAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.75),
        ])
    }

}

//MARK: - UICollectionViewDelegate & UICollectionViewDataSource
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return globalFoods.count
        } else if collectionView == mostCollectionView {
            return mostPopular.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == topCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCollectionViewCell", for: indexPath) as! TopCollectionViewCell
            cell.nameLabel.text = globalFoods[indexPath.row].name
            cell.globalImageView.image = UIImage(named: globalFoods[indexPath.row].image)
            //cell.backgroundColor = .black
            return cell
        } else if collectionView == mostCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as! PopulerCell
            let most = mostPopular[indexPath.row]
            cell.mostImageView.image = UIImage(named: most.image)
            cell.nameLabel.text = most.name
            cell.typeLabel.text = most.type
            cell.foodTypeLabel.text = most.foodType
            cell.starLabel.text = most.star
            return cell
        }
        

        return UICollectionViewCell()
    }
    
    
}

//MARK: - UITableViewDelegate & UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == popularTableView {
            return popularRestaurents.count
        } else if tableView == recentTableView {
            return recentItems.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == popularTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "popularRestaurentsCell", for: indexPath) as! PopularRestaurentsCell
            cell.selectionStyle = .none
            let popular = popularRestaurents[indexPath.row]
            cell.popularImage.image = UIImage(named: popular.image)
            cell.nameLabel.text = popular.name
            cell.starLabel.text = popular.star
            cell.ratingLabel.text = popular.rating
            cell.typeLabel.text = popular.type
            cell.foodTypeLabel.text = popular.foodType
            return cell
        } else if tableView == recentTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "recentCell", for: indexPath) as! RecentCell
            cell.selectionStyle = .none
            let recent = recentItems[indexPath.row]
            cell.popularImage.image = UIImage(named: recent.image)
            cell.nameLabel.text = recent.name
            cell.starLabel.text = recent.star
            cell.ratingLabel.text = recent.rating
            cell.typeLabel.text = recent.type
            cell.foodTypeLabel.text = recent.foodType
            return cell
        }

        return UITableViewCell()
    }
    
}
