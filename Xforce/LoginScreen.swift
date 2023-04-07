//
//  LoginScreen.swift
//  Xforce
//
//  Created by Maxwell da Silva e Silva on 19/03/23.
//

import UIKit

class LoginScreen: UIView {

    lazy var subImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background-app-club")
        return image
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "perfil")
        return image
    }()
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "My Profile"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Perfil sobre um dev sonhador"
        return label
    }()
    
    lazy var loginTextField: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = .white
        txt.autocorrectionType = .no
        txt.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        txt.borderStyle = .roundedRect
        txt.keyboardType = .emailAddress
        txt.attributedPlaceholder = NSAttributedString(
            string: "Login",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        txt.clipsToBounds = true
        txt.layer.cornerRadius = 12
        txt.layer.borderColor = UIColor.lightGray.cgColor
        txt.layer.borderWidth = 1.0
        return txt
    }()
    
    lazy var passwordTextField: UITextField = {
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.textColor = .white
        txt.autocorrectionType = .no
        txt.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1.0)
        txt.borderStyle = .roundedRect
        txt.keyboardType = .alphabet
        txt.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.4)])
        txt.clipsToBounds = true
        txt.layer.cornerRadius = 12
        txt.layer.borderColor = UIColor.lightGray.cgColor
        txt.layer.borderWidth = 1.0
        return txt
    }()
    
    lazy var recoverPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Recuperar a senha?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        //button.setTitleColor(UIColor(named: "e730d6"), for: .normal)
        button.setTitleColor(UIColor(red: 6/255, green: 153/255, blue: 94/255, alpha: 1.0) /* #e730d6 */, for: .normal)
        return button
       }()
       
    lazy var enterButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 0.5
        button.backgroundColor = UIColor(red: 5/255, green: 153/255, blue: 52/255, alpha: 1.0)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
//    lazy var subLoginView: UIImageView = {
//           let image = UIImageView()
//           image.translatesAutoresizingMaskIntoConstraints = false
//           image.image = UIImage(named: "background-pink")
//           image.contentMode = .scaleToFill
//           image.clipsToBounds = true
//           image.layer.cornerRadius = 8
//           return image
//       }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.subImageView)
        self.addSubview(self.logoAppImageView)
        self.addSubview(self.loginLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.loginTextField)
        self.addSubview(self.passwordTextField)
        self.addSubview(self.recoverPasswordButton)
        self.addSubview(self.enterButton)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.subImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.subImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.subImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.logoAppImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 100),
            self.logoAppImageView.widthAnchor.constraint(equalToConstant: 100),
            self.logoAppImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.loginLabel.topAnchor.constraint(equalTo: self.logoAppImageView.bottomAnchor, constant: 15),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.descriptionLabel.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 6),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            self.loginTextField.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 40),
            self.loginTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.loginTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.loginTextField.heightAnchor.constraint(equalToConstant: 30),
            
            self.passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: 15),
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            
            self.recoverPasswordButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 8),
            self.recoverPasswordButton.trailingAnchor.constraint(equalTo: self.loginTextField.trailingAnchor),
            self.recoverPasswordButton.heightAnchor.constraint(equalToConstant: 15),
            
            self.enterButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 50),
            self.enterButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.enterButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.enterButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
}
