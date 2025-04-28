//
//  NextViewController.swift
//  PassingData
//
//  Created by Aslan Korkmaz on 28.04.2025.
//

import UIKit


class NextViewController: UIViewController {
    
    var name: String?
    var image: UIImage?
    
    lazy var cardNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 25
        return imageView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        view.addSubview(cardNameLabel)
        view.addSubview(cardImageView)
        constraints()
        cardNameLabel.text = name
        cardImageView.image = image
    }
    
    private func constraints() {
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            cardImageView.heightAnchor.constraint(equalToConstant: 400),
            cardImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            cardImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            cardNameLabel.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 20),
            cardNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
