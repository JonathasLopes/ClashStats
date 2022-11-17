//
//  ClashUIView.swift
//  ClashStats
//
//  Created by Jonathas Lopes on 15/11/22.
//

import UIKit

class ClashUIView: UIView {
    var primaryColor = UIColor(red: 158/255.0, green: 120/255.0, blue: 76/255.0, alpha: 1.0)
    var secondaryColor = UIColor(red: 175/255.0, green: 93/255.0, blue: 86/255.0, alpha: 1.0)
    
    var startPointX: CGFloat = 0.5
    var startPointY: CGFloat = 0.25
    var endPointX: CGFloat = 0.5
    var endPointY: CGFloat = 0.75
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    lazy var shieldLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "shield")
        
        return imageView
    }()
    
    lazy var userName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jhow"
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        label.textColor = .white
        
        return label
    }()
    
    lazy var leagueName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Crystal League III"
        label.font = UIFont(name: "Roboto-Regular", size: 16)
        label.textColor = .white
        
        return label
    }()
    
    lazy var viewXP: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 2
        view.layer.borderColor = CGColor(red: 247, green: 209, blue: 173, alpha: 1)
        view.layer.cornerRadius = 28
        
        return view
    }()
    
    lazy var viewXP2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 247, green: 209, blue: 173, alpha: 1)
        view.layer.cornerRadius = 23
        
        return view
    }()
    
    lazy var xpLevel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "107"
        label.font = UIFont(name: "Roboto-Bold", size: 16)
        label.textColor = .white
        
        return label
    }()
    
    lazy var xpLevelNamed: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Exp"
        label.font = UIFont(name: "Roboto-Regular", size: 10)
        label.textColor = .white
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layoutSubviews()

        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        nil
    }
    
    private func setUpContraints() {
        addConstraintsToSubview(self.shieldLogo, self.userName, self.leagueName, self.viewXP, self.viewXP2, self.xpLevel, self.xpLevelNamed)
        
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
