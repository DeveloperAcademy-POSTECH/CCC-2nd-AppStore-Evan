//
//  AppRowCollectionViewCell.swift
//  CloneApp_Appstore
//
//  Created by 김예훈 on 2022/06/28.
//

import UIKit

class AppRowCollectionViewCell: UICollectionViewCell {
    
    lazy var icon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var installButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.titleLabel?.text = "받기"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    lazy var subLabel: UILabel = {
        let subLabel = UILabel()
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        return subLabel
    }()
    
    lazy var labels: UIStackView = {
        let labels = UIStackView(frame: .zero)
        labels.axis = .vertical
        labels.alignment = .leading
        labels.translatesAutoresizingMaskIntoConstraints = false
        return labels
    }()
    
    lazy var views: UIStackView = {
        let views = UIStackView(frame: .zero)
        views.axis = .horizontal
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        labels.addArrangedSubview(titleLabel)
        labels.addArrangedSubview(subLabel)
        views.addArrangedSubview(icon)
        views.addArrangedSubview(labels)
        views.addArrangedSubview(installButton)
        addSubview(views)
    }
    
    func setCell(data: AppInfoData) {
        self.titleLabel.text = data.name
        self.subLabel.text = data.subLabel
        self.icon.image = UIImage(named: "\(data.iconName)")
    }
}
