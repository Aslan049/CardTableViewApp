//
//  ViewController.swift
//  PassingData
//
//  Created by Aslan Korkmaz on 28.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var cards = [Card]()
    
    lazy var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        setTableView()
        constraintsTableView()
        addCards()
    }
    
    func addCards() {
        cards.append(Card(name: "2C Card", image: safeImage(name: "2C")))
        cards.append(Card(name: "2D Card", image: safeImage(name: "2D")))
        cards.append(Card(name: "2H Card", image: safeImage(name: "2H")))
    }
    
    func safeImage(name: String) -> UIImage? {
        guard let image = UIImage(named: name) else {
            return UIImage(named: "default")
        }
        return image
        
        /*if let image = UIImage(named: name) {
         return image
         } else {
         return UIImage(named: "default")
         }*/
    }
    
    
    func setTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CardTableViewCell.self, forCellReuseIdentifier: CardTableViewCell.reuseIdentifier)
        tableView.rowHeight = 100
    }
    
    func constraintsTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.reuseIdentifier, for: indexPath) as? CardTableViewCell else {
            return UITableViewCell()
        }
        let card = cards[indexPath.row]
        cell.cardNameLabel.text = card.name
        cell.cardImageView.image = card.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            cards.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)

        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let nextView = NextViewController()
        let card = cards[indexPath.row]
        nextView.name = card.name
        nextView.image = card.image
        navigationController?.pushViewController(nextView, animated: true)
    }
}

