//
//  TodayViewController.swift
//  CloneApp_Appstore
//
//  Created by 김예훈 on 2022/06/27.
//

import UIKit

class TodayViewController: UIViewController, UIScrollViewDelegate {
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .clear
        view.autoresizingMask = .flexibleHeight
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.bounces = true
        view.delegate = self
        return view
    }()
    
    lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "6월 27일 월요일"
        label.textColor = .lightGray
        return label
    }()
    
    lazy var todayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 36, weight: .bold)
        label.text = "투데이"
        label.textColor = .black
        return label
    }()
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .clear
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 17.5
        image.layer.borderWidth = 0.25
        image.layer.borderColor = UIColor.lightGray.cgColor
        image.image = UIImage(named: "profile")
        image.clipsToBounds = true
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        scrollView.addSubview(topView)
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            topView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            topView.widthAnchor.constraint(equalToConstant: view.frame.size.width)
        ])
        
        topView.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20.0),
            dateLabel.leftAnchor.constraint(equalTo: topView.leftAnchor, constant: 20.0),
            dateLabel.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -20.0)
        ])
        
        topView.addSubview(todayLabel)
        NSLayoutConstraint.activate([
            todayLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 2.0),
            todayLabel.leftAnchor.constraint(equalTo: dateLabel.leftAnchor),
            todayLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor)
        ])
        
        topView.addSubview(userImageView)
        NSLayoutConstraint.activate([
            userImageView.centerYAnchor.constraint(equalTo: todayLabel.centerYAnchor),
            userImageView.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: -20.0),
            userImageView.widthAnchor.constraint(equalToConstant: 35.0),
            userImageView.heightAnchor.constraint(equalTo: userImageView.widthAnchor, multiplier: 1.0),
            userImageView.leftAnchor.constraint(equalTo: todayLabel.rightAnchor, constant: 8.0)
        ])
    }
    

}
