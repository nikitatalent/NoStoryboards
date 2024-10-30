//
//  ViewController.swift
//  NoStoryboards
//
//  Created by Никита Мещеряков on 30.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let opinionView = UIView()
    private let reviewButton = UIButton()
    private let mainLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let remindButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        embedViews()
        setupLayout()
        setupAppearance()
    }


}

private extension ViewController {
    
    func embedViews() {
        view.addSubview(imageView)
        imageView.addSubview(opinionView)
        opinionView.addSubview(mainLabel)
        opinionView.addSubview(descriptionLabel)
        opinionView.addSubview(remindButton)
        opinionView.addSubview(reviewButton)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            opinionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 280),
            opinionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            opinionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            opinionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
            
            mainLabel.topAnchor.constraint(equalTo: opinionView.topAnchor, constant: 25),
            mainLabel.leadingAnchor.constraint(equalTo: opinionView.leadingAnchor, constant: 25),
            mainLabel.trailingAnchor.constraint(equalTo: opinionView.trailingAnchor, constant: -25),
            mainLabel.heightAnchor.constraint(equalToConstant: 22),
            
            descriptionLabel.topAnchor.constraint(equalTo: opinionView.topAnchor, constant: 57),
            descriptionLabel.leadingAnchor.constraint(equalTo: opinionView.leadingAnchor, constant: 25),
            descriptionLabel.trailingAnchor.constraint(equalTo: opinionView.trailingAnchor, constant: -25),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 130),
            
            reviewButton.topAnchor.constraint(equalTo: opinionView.topAnchor, constant: 205),
            reviewButton.leadingAnchor.constraint(equalTo: opinionView.leadingAnchor, constant: 24),
            reviewButton.trailingAnchor.constraint(equalTo: opinionView.trailingAnchor, constant: -24),
            reviewButton.heightAnchor.constraint(equalToConstant: 49),
            
            remindButton.topAnchor.constraint(equalTo: opinionView.topAnchor, constant: 274),
            remindButton.leadingAnchor.constraint(equalTo: opinionView.leadingAnchor, constant: 24),
            remindButton.trailingAnchor.constraint(equalTo: opinionView.trailingAnchor, constant: -24),
            remindButton.heightAnchor.constraint(equalToConstant: 19),
        ])
    }
    
    func setupAppearance() {
        imageView.image = UIImage(named: "Rectangle.png")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        opinionView.layer.cornerRadius = 20
        opinionView.backgroundColor = .white.withAlphaComponent(0.65)
        opinionView.translatesAutoresizingMaskIntoConstraints = false
        
        mainLabel.text = "Мы ценим ваше мнение!"
        mainLabel.textColor = .black
        mainLabel.font = .systemFont(ofSize: 20)
        mainLabel.textAlignment = .center
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.text = "Спасибо, что пользуетесь нашим приложением. Нам очень важно знать ваше мнение, чтобы продолжать улучшать качество и функциональность сервиса. Поделитесь своими впечатлениями или сообщите о проблемах, с которыми вы столкнулись. Ваши отзывы помогают нам становиться лучше каждый день!"
        descriptionLabel.textColor = .black
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textAlignment = .center
        descriptionLabel.numberOfLines = 8
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        reviewButton.layer.cornerRadius = 20
        reviewButton.backgroundColor = .blue
        reviewButton.setTitle("Оставить отзыв", for: .normal)
        reviewButton.setTitleColor(.white, for: .normal)
        reviewButton.translatesAutoresizingMaskIntoConstraints = false
        
        remindButton.setTitle("Напомнить позже", for: .normal)
        remindButton.setTitleColor(.blue, for: .normal)
        remindButton.translatesAutoresizingMaskIntoConstraints = false
    }
}

