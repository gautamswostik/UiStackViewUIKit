//
//  LearnUIStackViewController.swift
//  UIkitComplexDesigns
//
//  Created by swostik gautam on 08/07/2023.
//

import UIKit

class LearnUIStackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        navigationItem.title = "With UIStackView"

        let verticalStack = UIStackView()
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        verticalStack.spacing = 20
        verticalStack.axis = .vertical
        verticalStack.distribution = .equalSpacing
        
        let logoHorizontalStack = UIStackView()
        logoHorizontalStack.translatesAutoresizingMaskIntoConstraints = false
        logoHorizontalStack.axis = .horizontal
        logoHorizontalStack.distribution = .equalSpacing
        
        let cardLogo = UIImageView()
        cardLogo.contentMode = .scaleAspectFit
        cardLogo.image = UIImage(named: "netflix")?.resized(to: CGSize(width: 100, height: 20))
        
        let cardBrandLogo = UIImageView()
        cardBrandLogo.contentMode = .scaleAspectFit
        cardBrandLogo.image = UIImage(named: "NetflixSymbol")?.resized(to: CGSize(width: 50, height: 50))
        
        logoHorizontalStack.addArrangedSubview(cardLogo)
        logoHorizontalStack.addArrangedSubview(cardBrandLogo)
        
        let chipAndInfoHorizontalStack = UIStackView()
        chipAndInfoHorizontalStack.translatesAutoresizingMaskIntoConstraints = false
        chipAndInfoHorizontalStack.axis = .horizontal
        chipAndInfoHorizontalStack.distribution = .equalSpacing
        
        let cardChip = UIImageView()
        cardChip.translatesAutoresizingMaskIntoConstraints = false
        cardChip.contentMode = .scaleAspectFit
        cardChip.image = UIImage(named: "netflixChip")?.resized(to: CGSize(width: 60, height: 40))

        let infoVerticalStack = UIStackView()
        infoVerticalStack.translatesAutoresizingMaskIntoConstraints = false
        infoVerticalStack.axis = .vertical
        infoVerticalStack.alignment = .trailing

        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "netflix@email.com"
        email.textColor = .white

        let password = UILabel()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = "**************"
        password.textColor = .white

        infoVerticalStack.addArrangedSubview(email)
        infoVerticalStack.addArrangedSubview(password)

        chipAndInfoHorizontalStack.addArrangedSubview(cardChip)
        chipAndInfoHorizontalStack.addArrangedSubview(infoVerticalStack)
        
        
        let nameAndExpiryDateInfoHorizontalStack = UIStackView()
        nameAndExpiryDateInfoHorizontalStack.translatesAutoresizingMaskIntoConstraints = false
        nameAndExpiryDateInfoHorizontalStack.axis = .horizontal
        nameAndExpiryDateInfoHorizontalStack.distribution = .equalSpacing
        
        let userName = UILabel()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.text = "Netflix User"
        userName.textColor = .white
        
        let expiryDate = UILabel()
        expiryDate.translatesAutoresizingMaskIntoConstraints = false
        expiryDate.text = "24/12/2022"
        expiryDate.textColor = .white
        
        nameAndExpiryDateInfoHorizontalStack.addArrangedSubview(userName)
        nameAndExpiryDateInfoHorizontalStack.addArrangedSubview(expiryDate)
        
        verticalStack.addArrangedSubview(logoHorizontalStack)
        verticalStack.addArrangedSubview(chipAndInfoHorizontalStack)
        verticalStack.addArrangedSubview(nameAndExpiryDateInfoHorizontalStack)
        
        let card = UIView(frame: view.frame)
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = .black
        card.layer.cornerRadius = 10
        card.layer.shadowOffset = CGSize(width: 10, height: 0)
        card.layer.shadowRadius = 6.0
        card.layer.shadowOpacity = 0.7
        
        let cardBackgroundLogo = UIImageView()
        cardBackgroundLogo.translatesAutoresizingMaskIntoConstraints = false
        cardBackgroundLogo.contentMode = .scaleAspectFit
        cardBackgroundLogo.image = UIImage(named: "NetflixSymbol")
        
        
        
        
        card.addSubview(cardBackgroundLogo)
        card.addSubview(verticalStack)
        view.addSubview(card)
        
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            card.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 16),
            card.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor , constant: -16),
            card.bottomAnchor.constraint(equalTo: verticalStack.bottomAnchor , constant: 16),
            
            cardBackgroundLogo.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            cardBackgroundLogo.centerXAnchor.constraint(equalTo: card.centerXAnchor),
            cardBackgroundLogo.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            cardBackgroundLogo.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            cardBackgroundLogo.topAnchor.constraint(equalTo: card.topAnchor),
            cardBackgroundLogo.heightAnchor.constraint(equalToConstant: view.bounds.height*0.25),
            
            logoHorizontalStack.topAnchor.constraint(equalTo: card.topAnchor),
            logoHorizontalStack.leadingAnchor.constraint(equalTo: card.leadingAnchor , constant: 16),
            logoHorizontalStack.trailingAnchor.constraint(equalTo: card.trailingAnchor , constant: -16),
        ])
    }
}
