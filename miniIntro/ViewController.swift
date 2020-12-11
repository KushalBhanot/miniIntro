//
//  ViewController.swift
//  miniIntro
//
//  Created by kushal on 11/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var imageView: UIImageView!
    var followButton: UIButton!
    var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        nameLabel = UILabel()
        nameLabel.text = "Kushal Bhanot"
        nameLabel.textColor = UIColor.black
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        imageView = UIImageView() // frame: CGRect(x: 100, y: 100, width: 200, height: 200)
        imageView.image = UIImage(named: "Kushal Bhanot")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
//        imageView.layer.cornerRadius = imageView.frame.height/2
//        imageView.layer.masksToBounds = false
        view.addSubview(imageView)
        
        followButton = UIButton()
        followButton.setTitle("Follow", for: .normal)
        followButton.setTitleColor(.blue, for: .normal)
        followButton.translatesAutoresizingMaskIntoConstraints = false
        followButton.layer.borderWidth = 1
        followButton.layer.borderColor = UIColor.blue.cgColor //this is different than how we normally set colors beacuse layer expects cgColor type
        followButton.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        followButton.layer.cornerRadius = 10
        view.addSubview(followButton)
        
        textView = UITextView()
        textView.text = "Hey! I am an iOS developer from India. I'm an open-source enthusiast who strongly believes in the power of community and sharing knowledge. I want to build an open-source iOS ecosystem in India. There are a lot of iOS developers around, but there's no network or a single platform that brings every professional together(except LinkedIn)."
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 18)
        view.addSubview(textView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            followButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            followButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            followButton.widthAnchor.constraint(equalToConstant: 100),
            followButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: followButton.bottomAnchor, constant: 20),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15)
        ])
    }
    
    @objc func followButtonTapped() {
        if followButton.currentTitle == "Follow" {
            followButton.setTitle("Following", for: .normal)
            followButton.setTitleColor(.white, for: .normal)
            followButton.backgroundColor = .blue
        } else {
            followButton.setTitle("Follow", for: .normal)
            followButton.setTitleColor(.blue, for: .normal)
            followButton.backgroundColor = .white
        }
    }
}

