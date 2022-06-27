//
//  CardCollectionViewCell.swift
//  CloneApp_Appstore
//
//  Created by 김예훈 on 2022/06/28.
//

import UIKit

enum CardType {
    case article(section: String, title: String, label: String, background: UIImage, body: UIView)
    case choice(section: String, title: String, list: [AppInfoData])
    case spotlight(section: String, title: String, app: AppInfoData, background: UIImage, body: UIView)
    case collection(section: String, title: String, list: [AppInfoData])
}

class CardCollectionViewCell: UICollectionViewCell {
    
    lazy var shadowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    lazy var secionLabel: UILabel = {
        let secionLabel = UILabel()
        secionLabel.translatesAutoresizingMaskIntoConstraints = false
        return secionLabel
    }()
    
    lazy var labels: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .leading
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var background: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var cardType: CardType
    
    init(frame: CGRect, cardType: CardType) {
        self.cardType = cardType
        super.init(frame: frame)
        configureView()
    }
    
    override init(frame: CGRect) {
        self.cardType = .article(section: "asdf", title: "", label: "", background: UIImage(), body: UIView())
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(cardType: CardType) {
        self.cardType = cardType
        configureView()
    }
    
    func configureView() {
        
        shadowView.layer.cornerRadius = 20
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.2
        shadowView.layer.shadowRadius = 10
        shadowView.layer.shadowOffset = CGSize(width: -1, height: 2)
        
        backgroundColor = .clear
        addSubview(shadowView)
        addSubview(containerView)
        addSubview(background)
        
        containerView.layer.cornerRadius = 20
        containerView.backgroundColor = .red
        
        NSLayoutConstraint.activate([
            containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            background.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            background.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            background.topAnchor.constraint(equalTo: containerView.topAnchor),
            background.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            shadowView.topAnchor.constraint(equalTo: containerView.topAnchor),
            shadowView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            shadowView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            shadowView.leftAnchor.constraint(equalTo: containerView.leftAnchor)
        ])
        
        labels.addArrangedSubview(secionLabel)
        labels.addArrangedSubview(titleLabel)
        addSubview(labels)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: labels.topAnchor, constant: 2.0),
            contentView.leftAnchor.constraint(equalTo: labels.leftAnchor, constant: 2.0),
        ])
        
        switch cardType {
        case .article(let section, let title, let label, let background, let body):
            configureArticle(section: section, title: title, label: label, background: background, body: body)
        case .choice(let section, let title, let list):
            configureChoice(section: section, title: title, list: list)
        case .spotlight(let section, let title, let app, let background, let body):
            configureSpotlight(section: section, title: title, app: app, background: background, body: body)
        case .collection(let section, let title, let list):
            configureCollection(section: section, title: title, list: list)
        }
    }
    
    private func configureArticle(section: String, title: String, label: String, background: UIImage, body: UIView) {
        self.secionLabel.text = section
        self.titleLabel.text = title
    }
    
    private func configureChoice(section: String, title: String, list: [AppInfoData]) {
        self.secionLabel.text = section
        self.titleLabel.text = title
    }
    
    private func configureSpotlight(section: String, title: String, app: AppInfoData, background: UIImage, body: UIView) {
        self.secionLabel.text = section
        self.titleLabel.text = title
    }
    
    private func configureCollection(section: String, title: String, list: [AppInfoData]) {
        self.secionLabel.text = section
        self.titleLabel.text = title
    }
    
    
}
