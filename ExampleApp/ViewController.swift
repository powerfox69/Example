//
//  ViewController.swift
//  ExampleApp
//
//  Created by Gleb on 7/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLabel = UILabel()
    private let imageView = UIImageView()
    private let imageContainerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        updateNumbers()
        
        view.addSubview(textLabel)
        view.addSubview(imageContainerView)
        
        setupLabel()
        setupImageView()
        setupView()
        setapLayout()
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
    
    private func setupLabel() {
        let firstNumber = helper.getNumbers().first
        textLabel.text = firstNumber?.formatted()
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        textLabel.textColor = .red
    }
    
    private func setupImageView() {
        imageView.image = UIImage(named: "hog")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        
        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 15, height: 15)
        imageContainerView.layer.shadowOpacity = 1
        imageContainerView.layer.shadowRadius = 10

        imageContainerView.addSubview(imageView)
    }
    
    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.green.cgColor, UIColor.blue.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func setapLayout() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        imageContainerView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(
                equalTo: view.topAnchor, constant: 100),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageContainerView.topAnchor.constraint(
                equalTo: textLabel.bottomAnchor, constant: 150),
            imageContainerView.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
            imageContainerView.heightAnchor.constraint(equalToConstant: 200),
            imageContainerView.widthAnchor.constraint(equalToConstant: 200),
            
            imageView.topAnchor.constraint(
                equalTo: imageContainerView.topAnchor),
            imageView.bottomAnchor.constraint(
                equalTo: imageContainerView.bottomAnchor),
            imageView.leftAnchor.constraint(
                equalTo: imageContainerView.leftAnchor),
            imageView.rightAnchor.constraint(
                equalTo: imageContainerView.rightAnchor)
        ])
    }
}
