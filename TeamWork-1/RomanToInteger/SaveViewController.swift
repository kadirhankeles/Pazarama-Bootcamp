//
//  SaveViewController.swift
//  RomanToInteger
//
//  Created by Kadirhan Keles on 14.10.2023.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var saveArray: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }

}

extension SaveViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        saveArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "saveCell", for: indexPath) as! SaveTableViewCell
        cell.labelResult.text = saveArray![indexPath.row]
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // İlgili satırı veri kaynağınızdan ve görüntüden kaldırın
            saveArray?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
}
