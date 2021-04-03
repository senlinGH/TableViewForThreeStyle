//
//  ViewController.swift
//  TableViewForThreeStyle
//
//  Created by Lin Yi Sen on 2021/4/3.
//  Copyright © 2021 Swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleForHeader = ["法國", "紐約", "巴黎", "義大利"]
    
    let famousBrandOfOne = [
        ["Louis Vuitton (1854年，法國)"],
        ["Coach (1941年，紐約)"],
        ["Cartier (1847年，巴黎)"],
        ["Gucci (1921年，義大利)"]
    ]
    
    let famousBrand = [
        ["Louis Vuitton (1854年，法國)", "Hermes (1837年 ，法國)", "Givenchy (1952年，法國)", "Lacoste (1933年，法國)"],
        ["Coach (1941年，紐約)", "Calvin Klein (1968年，紐約)", "Marc Jacobs (1986年，紐約)", "Anna Sui (1991年，紐約)"],
        ["Cartier (1847年，巴黎)", "Chanel (1913 年，巴黎)", "Christian Dior (1947年，巴黎)", "Celine (1945年，巴黎)", "Agnes.b (1930年，巴黎)"],
        ["Gucci (1921年，義大利)", "Prada (1913年，義大利)", "Versace (1978年，義大利)", "Dolce & Gabbana (1985年，義大利)", "D&G (1994年，義大利)"]
    ]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return famousBrand.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return titleForHeader[0]
        case 1:
            return titleForHeader[1]
        case 2:
            return titleForHeader[2]
        case 3:
            return titleForHeader[3]
        default:
            fatalError("Header標題錯誤")
        }
    }
    
    // Section裡有幾列
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return famousBrand[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = famousBrand[indexPath.section][indexPath.row]
        
        return cell
    }
    
    
}

