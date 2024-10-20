//
//  safetyApp.swift
//  safety

import UIKit

class SafetyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupNavigationBar()
        setupTabControl()
        setupHeatMap()
        setupActionButtons()
    }
    
    // Navigation Bar with Time and Search Icon
    func setupNavigationBar() {
        // Time Label
        let timeLabel = UILabel()
        timeLabel.text = "9:41"
        timeLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(timeLabel)
        
        // Search Icon
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .black
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchButton)
        
        // Constraints for time and search icon
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    // Tab Control for "Carpool", "Routes", and "Safety"
    func setupTabControl() {
        let tabControlStackView = UIStackView()
        tabControlStackView.axis = .horizontal
        tabControlStackView.distribution = .fillEqually
        tabControlStackView.spacing = 10
        tabControlStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let carpoolButton = createTabButton(title: "Carpool")
        let routesButton = createTabButton(title: "Routes")
        let safetyButton = createTabButton(title: "Safety", isSelected: true)
        
        tabControlStackView.addArrangedSubview(carpoolButton)
        tabControlStackView.addArrangedSubview(routesButton)
        tabControlStackView.addArrangedSubview(safetyButton)
        
        view.addSubview(tabControlStackView)
        
        NSLayoutConstraint.activate([
            tabControlStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            tabControlStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tabControlStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tabControlStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // Helper function for creating tab buttons
    func createTabButton(title: String, isSelected: Bool = false) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = isSelected ? .red : .lightGray
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }
    
    // Heat Map Section with a Color Legend
    func setupHeatMap() {
        let heatMapImageView = UIImageView()
        heatMapImageView.image = UIImage(named: "heatmap") // Add your heatmap image here
        heatMapImageView.contentMode = .scaleAspectFit
        heatMapImageView.layer.cornerRadius = 15
        heatMapImageView.clipsToBounds = true
        heatMapImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(heatMapImageView)
        
        let legendView = UIStackView()
        legendView.axis = .horizontal
        legendView.distribution = .fillEqually
        legendView.translatesAutoresizingMaskIntoConstraints = false
        
        let leastDangerLabel = UILabel()
        leastDangerLabel.text = "Least danger"
        leastDangerLabel.font = UIFont.systemFont(ofSize: 12)
        
        let mostDangerLabel = UILabel()
        mostDangerLabel.text = "Most danger"
        mostDangerLabel.font = UIFont.systemFont(ofSize: 12)
        mostDangerLabel.textAlignment = .right
        
        legendView.addArrangedSubview(leastDangerLabel)
        legendView.addArrangedSubview(mostDangerLabel)
        
        view.addSubview(legendView)
        
        NSLayoutConstraint.activate([
            heatMapImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            heatMapImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            heatMapImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            heatMapImageView.heightAnchor.constraint(equalToConstant: 200),
            
            legendView.topAnchor.constraint(equalTo: heatMapImageView.bottomAnchor, constant: 10),
            legendView.leadingAnchor.constraint(equalTo: heatMapImageView.leadingAnchor),
            legendView.trailingAnchor.constraint(equalTo: heatMapImageView.trailingAnchor)
        ])
    }
    
    // Bottom Action Buttons
    func setupActionButtons() {
        let reportIssueButton = UIButton(type: .system)
        reportIssueButton.setTitle("Report issue", for: .normal)
        reportIssueButton.backgroundColor = .red
        reportIssueButton.setTitleColor(.white, for: .normal)
        reportIssueButton.layer.cornerRadius = 10
        reportIssueButton.translatesAutoresizingMaskIntoConstraints = false
        
        let alertPoliceButton = UIButton(type: .system)
        alertPoliceButton.setTitle("Alert police", for: .normal)
        alertPoliceButton.backgroundColor = .darkGray
        alertPoliceButton.setTitleColor(.white, for: .normal)
        alertPoliceButton.layer.cornerRadius = 10
        alertPoliceButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(reportIssueButton)
        view.addSubview(alertPoliceButton)
        
        NSLayoutConstraint.activate([
            reportIssueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            reportIssueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            reportIssueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -90),
            reportIssueButton.heightAnchor.constraint(equalToConstant: 50),
            
            alertPoliceButton.leadingAnchor.constraint(equalTo: reportIssueButton.leadingAnchor),
            alertPoliceButton.trailingAnchor.constraint(equalTo: reportIssueButton.trailingAnchor),
            alertPoliceButton.topAnchor.constraint(equalTo: reportIssueButton.bottomAnchor, constant: 10),
            alertPoliceButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

