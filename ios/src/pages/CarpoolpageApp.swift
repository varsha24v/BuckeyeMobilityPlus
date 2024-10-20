//
//  CarpoolpageApp.swift
//  Carpoolpage

import UIKit

class MobilityViewController: UIViewController {
    
    // UI Components
    let greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi Aishani"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let carpoolButton: UIButton = createTabButton(title: "Carpool", color: .systemRed)
    let routesButton: UIButton = createTabButton(title: "Routes", color: .lightGray)
    let safetyButton: UIButton = createTabButton(title: "Safety", color: .lightGray)

    let driverButton: UIButton = createRoleButton(title: "Driver", color: .systemGray)
    let riderButton: UIButton = createRoleButton(title: "Rider", color: .systemRed)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupLayout()
    }

    // MARK: - Setup Layout
    private func setupLayout() {
        // Add all subviews
        view.addSubview(greetingLabel)
        view.addSubview(searchButton)
        view.addSubview(carpoolButton)
        view.addSubview(routesButton)
        view.addSubview(safetyButton)
        view.addSubview(driverButton)
        view.addSubview(riderButton)

        // Layout constraints
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            searchButton.centerYAnchor.constraint(equalTo: greetingLabel.centerYAnchor),
            
            carpoolButton.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 32),
            carpoolButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            carpoolButton.widthAnchor.constraint(equalToConstant: 100),
            carpoolButton.heightAnchor.constraint(equalToConstant: 40),
            
            routesButton.centerYAnchor.constraint(equalTo: carpoolButton.centerYAnchor),
            routesButton.leadingAnchor.constraint(equalTo: carpoolButton.trailingAnchor, constant: 16),
            routesButton.widthAnchor.constraint(equalToConstant: 100),
            routesButton.heightAnchor.constraint(equalToConstant: 40),
            
            safetyButton.centerYAnchor.constraint(equalTo: carpoolButton.centerYAnchor),
            safetyButton.leadingAnchor.constraint(equalTo: routesButton.trailingAnchor, constant: 16),
            safetyButton.widthAnchor.constraint(equalToConstant: 100),
            safetyButton.heightAnchor.constraint(equalToConstant: 40),
            
            driverButton.topAnchor.constraint(equalTo: carpoolButton.bottomAnchor, constant: 50),
            driverButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            driverButton.widthAnchor.constraint(equalToConstant: 200),
            driverButton.heightAnchor.constraint(equalToConstant: 60),
            
            riderButton.topAnchor.constraint(equalTo: driverButton.bottomAnchor, constant: 16),
            riderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            riderButton.widthAnchor.constraint(equalToConstant: 200),
            riderButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }

    // MARK: - Helper Functions
    static func createTabButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    static func createRoleButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}

