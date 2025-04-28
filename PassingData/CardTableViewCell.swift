//
//  CustomTableViewCell.swift
//  PassingData
//
//  Created by Aslan Korkmaz on 28.04.2025.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "CustomTableViewCell"
    
    lazy var cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    lazy var cardNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.contentMode = .right
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardImageView)
        contentView.addSubview(cardNameLabel)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate( [
            cardImageView.widthAnchor.constraint(equalToConstant: 50),
            cardImageView.heightAnchor.constraint(equalToConstant: 80),
            cardImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            cardImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),

            cardNameLabel.leadingAnchor.constraint(equalTo: cardImageView.trailingAnchor, constant: 15),
            cardNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            cardNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
