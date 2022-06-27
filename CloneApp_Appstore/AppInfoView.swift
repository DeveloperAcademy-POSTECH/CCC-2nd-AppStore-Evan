//
//  AppView.swift
//  CloneApp_Appstore
//
//  Created by 김예훈 on 2022/06/27.
//

import UIKit

class AppInfoView: UIView {
    lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "ASdfasdf"
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = backgroundType.titleTextColor
        return label
    }()
    
    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = backgroundType.subtitleTextColor
        return label
    }()
    
    lazy var buttonSubtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = backgroundType.subtitleTextColor
        return label
    }()
    
    lazy var getButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.roundedRect)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var labelsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var detailsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var data: AppInfoData
    
    init?(_ data: AppInfoData?) {
        guard let data = data else { return nil }
        self.data = data
        super.init(frame: .zero)
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViews() {
        
        NSLayoutConstraint.activate([
            subtitleLabel.leftAnchor.constraint(equalTo: labelsView.leftAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: labelsView.bottomAnchor),
            subtitleLabel.widthAnchor.constraint(equalTo: labelsView.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: labelsView.leftAnchor),
            titleLabel.widthAnchor.constraint(equalTo: labelsView.widthAnchor),
            titleLabel.topAnchor.constraint(equalTo: labelsView.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -2.0)
            
        ])
        
        addSubview(iconImageView)
        addSubview(labelsView)
        addSubview(getButton)
        
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7),
            iconImageView.widthAnchor.constraint(equalTo: iconImageView.heightAnchor),
            iconImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        
            labelsView.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 15.0),
            labelsView.rightAnchor.constraint(equalTo: getButton.leftAnchor, constant: -10.0),
            labelsView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            getButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            getButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -1.0),
            getButton.widthAnchor.constraint(equalToConstant: 76.0)
        ])
    }

}
