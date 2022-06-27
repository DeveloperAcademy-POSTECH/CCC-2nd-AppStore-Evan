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
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        
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
        
    }
    
    private func configureChoice(section: String, title: String, list: [AppInfoData]) {
        
    }
    
    private func configureSpotlight(section: String, title: String, app: AppInfoData, background: UIImage, body: UIView) {
        
    }
    
    private func configureCollection(section: String, title: String, list: [AppInfoData]) {
        
    }
}
