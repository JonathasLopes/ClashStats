//
//  HeaderClashUIView.swift
//  ClashStats
//
//  Created by Jonathas Lopes on 15/11/22.
//

import UIKit

class HeaderClashUIView: UIView {
    
    lazy var shieldLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "shield")
        
        return imageView
    }()
    
    lazy var userName: UILabel = {
        let label = UILabel()
        label.text = "Jhow"
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        
        return label
    }()
    
    lazy var leagueName: UILabel = {
        let label = UILabel()
        label.text = "Crystal League III"
        label.font = UIFont(name: "Roboto-Regular", size: 16)
        label.textColor = .white
        
        return label
    }()
    
    lazy var viewXP: UIView = {
        let view = UIView()
        view.layer.borderWidth = 2
        view.layer.borderColor = CGColor(red: 247, green: 209, blue: 173, alpha: 1)
        view.layer.cornerRadius = 28
        
        return view
    }()
    
    lazy var viewXP2: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 247, green: 209, blue: 173, alpha: 1)
        view.layer.cornerRadius = 23
        
        return view
    }()
    
    lazy var xpLevel: UILabel = {
        let label = UILabel()
        label.text = "107"
        label.font = UIFont(name: "Roboto-Bold", size: 16)
        label.textColor = .white
        
        return label
    }()
    
    lazy var xpLevelNamed: UILabel = {
        let label = UILabel()
        label.text = "Exp"
        label.font = UIFont(name: "Roboto-Regular", size: 10)
        label.textColor = .white
        
        return label
    }()
    
    func setUpHeaderConstraint() {
        addConstrainedSubviews(shieldLogo, userName, leagueName, viewXP, viewXP2, xpLevel, xpLevelNamed)
        
        NSLayoutConstraint.activate([
            self.shieldLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 57),
            self.shieldLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            self.shieldLogo.heightAnchor.constraint(equalToConstant: 85),
            
            self.userName.topAnchor.constraint(equalTo: self.topAnchor, constant: 76),
            self.userName.leadingAnchor.constraint(equalTo: self.shieldLogo.trailingAnchor, constant: 16),
            
            self.leagueName.topAnchor.constraint(equalTo: self.userName.bottomAnchor, constant: 6),
            self.leagueName.leadingAnchor.constraint(equalTo: self.shieldLogo.trailingAnchor, constant: 16),
            
            self.viewXP2.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            self.viewXP2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -28),
            self.viewXP2.heightAnchor.constraint(equalToConstant: 66),
            self.viewXP2.widthAnchor.constraint(equalToConstant: 66),
            
            self.viewXP.topAnchor.constraint(equalTo: self.viewXP2.topAnchor, constant: -4.71),
            self.viewXP.trailingAnchor.constraint(equalTo: self.viewXP2.trailingAnchor, constant: 4.71),
            self.viewXP.leadingAnchor.constraint(equalTo: self.viewXP2.leadingAnchor, constant: -4.71),
            self.viewXP.bottomAnchor.constraint(equalTo: self.viewXP2.bottomAnchor, constant: 4.71),
            self.viewXP.heightAnchor.constraint(equalToConstant: 56.57),
            self.viewXP.widthAnchor.constraint(equalToConstant: 56.57),
            
            self.xpLevel.centerYAnchor.constraint(equalTo: self.viewXP2.centerYAnchor, constant: -5),
            self.xpLevel.centerXAnchor.constraint(equalTo: self.viewXP2.centerXAnchor),
            
            self.xpLevelNamed.centerYAnchor.constraint(equalTo: self.viewXP2.centerYAnchor, constant: 10),
            self.xpLevelNamed.centerXAnchor.constraint(equalTo: self.viewXP2.centerXAnchor)
        ])
    }
    
}
