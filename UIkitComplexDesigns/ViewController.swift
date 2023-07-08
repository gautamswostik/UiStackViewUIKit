//
//  ViewController.swift
//  UIkitComplexDesigns
//
//  Created by swostik gautam on 07/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        
        let creditCardView = UIView(frame: view.frame)
        creditCardView.translatesAutoresizingMaskIntoConstraints = false
        creditCardView.backgroundColor = .black
        creditCardView.layer.cornerRadius = 10
        creditCardView.layer.shadowOffset = CGSize(width: 10, height: 0)
        creditCardView.layer.shadowRadius = 6.0
        creditCardView.layer.shadowOpacity = 0.7
        creditCardView.backgroundColor = UIColor(patternImage: UIImage(named: "NetflixSymbol")!)
        
        let cardLogo = UIImageView()
        cardLogo.translatesAutoresizingMaskIntoConstraints = false
        cardLogo.contentMode = .scaleAspectFit
        cardLogo.image = UIImage(named: "netflix")?.resized(to: CGSize(width: 100, height: 20))
        
        let cardBrandLogo = UIImageView()
        cardBrandLogo.translatesAutoresizingMaskIntoConstraints = false
        cardBrandLogo.contentMode = .scaleAspectFit
        cardBrandLogo.image = UIImage(named: "NetflixSymbol")?.resized(to: CGSize(width: 50, height: 50))
        
        let cardChip = UIImageView()
        cardChip.translatesAutoresizingMaskIntoConstraints = false
        cardChip.contentMode = .scaleAspectFit
        cardChip.image = UIImage(named: "netflixChip")?.resized(to: CGSize(width: 60, height: 40))
        
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "netflix@email.com"
        email.textColor = .white
        
        let password = UILabel()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = "**************"
        password.textColor = .white
        
        let userName = UILabel()
        userName.translatesAutoresizingMaskIntoConstraints = false
        userName.text = "Netflix User"
        userName.textColor = .white
        
        let expiryDate = UILabel()
        expiryDate.translatesAutoresizingMaskIntoConstraints = false
        expiryDate.text = "24/12/2022"
        expiryDate.textColor = .white
        
        creditCardView.addSubview(cardLogo)
        creditCardView.addSubview(cardBrandLogo)
        creditCardView.addSubview(cardChip)
        creditCardView.addSubview(email)
        creditCardView.addSubview(password)
        creditCardView.addSubview(userName)
        creditCardView.addSubview(expiryDate)
        
        let button = UIButton(type: .system)
        button.setTitle("Using StackView", for: .normal)
        button.backgroundColor = .purple
        button.tintColor = .white
        button.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        button.addTarget(self, action: #selector(navigateToSecondScreen), for: .touchUpInside)
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(creditCardView)
        scrollView.addSubview(button)
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            creditCardView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            creditCardView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor , constant: 16),
            creditCardView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor ,constant: -16),
            creditCardView.widthAnchor.constraint(equalTo: view.widthAnchor , constant: -32),
            creditCardView.heightAnchor.constraint(equalToConstant: view.bounds.height*0.2),
            
            cardLogo.topAnchor.constraint(equalTo: creditCardView.topAnchor, constant: 16),
            cardLogo.leadingAnchor.constraint(equalTo: creditCardView.leadingAnchor, constant: 16),
            
            cardBrandLogo.topAnchor.constraint(equalTo: creditCardView.topAnchor, constant: 8),
            cardBrandLogo.trailingAnchor.constraint(equalTo: creditCardView.trailingAnchor, constant: -16),
            
            cardChip.topAnchor.constraint(equalTo: cardLogo.bottomAnchor, constant: 28),
            cardChip.leadingAnchor.constraint(equalTo: creditCardView.leadingAnchor, constant: 16),
            
            email.topAnchor.constraint(equalTo: cardBrandLogo.bottomAnchor, constant: 28),
            email.trailingAnchor.constraint(equalTo: creditCardView.trailingAnchor, constant: -16),
            
            password.topAnchor.constraint(equalTo: email.bottomAnchor),
            password.trailingAnchor.constraint(equalTo: creditCardView.trailingAnchor, constant: -16),
            
            userName.topAnchor.constraint(equalTo: password.bottomAnchor , constant: 16),
            userName.leadingAnchor.constraint(equalTo: creditCardView.leadingAnchor, constant: 16),
            
            expiryDate.topAnchor.constraint(equalTo: userName.topAnchor),
            expiryDate.trailingAnchor.constraint(equalTo: creditCardView.trailingAnchor, constant: -16),
            
            button.leadingAnchor.constraint(equalTo: creditCardView.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: creditCardView.trailingAnchor),
            button.topAnchor.constraint(equalTo: creditCardView.bottomAnchor , constant: 16),
        ])
    }
    
    @objc func navigateToSecondScreen(){
        let nextScreen = LearnUIStackViewController()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

extension UIImage {
    func resized(to targetSize: CGSize) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
}
