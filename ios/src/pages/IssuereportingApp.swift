//
//  issuereportingApp.swift
//  issuereporting

import UIKit

class ReportIssueViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupNavigationBar()
        setupTabControl()
        setupForm()
        setupSubmitButton()
    }
    
    // Navigation Bar with Time and Search Icon
    func setupNavigationBar() {
        let timeLabel = UILabel()
        timeLabel.text = "9:41"
        timeLabel.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(timeLabel)
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .black
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchButton)
        
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
    
    // Report Form UI Elements
    func setupForm() {
        // Location TextField
        let locationLabel = UILabel()
        locationLabel.text = "Location"
        locationLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationLabel)
        
        let locationTextField = UITextField()
        locationTextField.borderStyle = .roundedRect
        locationTextField.placeholder = "Enter location"
        locationTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(locationTextField)
        
        // Concern Picker (Dropdown)
        let concernLabel = UILabel()
        concernLabel.text = "Choose a concern"
        concernLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        concernLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(concernLabel)
        
        let concernTextField = UITextField()
        concernTextField.borderStyle = .roundedRect
        concernTextField.placeholder = "Select from options"
        concernTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(concernTextField)
        
        // Dropdown Options as Buttons (for simplicity)
        let suspiciousActivityButton = createOptionButton(title: "Suspicious Activity")
        let roadHazardsButton = createOptionButton(title: "Road Hazards")
        let crimeButton = createOptionButton(title: "Crime")
        
        view.addSubview(suspiciousActivityButton)
        view.addSubview(roadHazardsButton)
        view.addSubview(crimeButton)
        
        // Text View for Scenario Description
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Describe scenario (50-200 words)"
        descriptionLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
        
        let descriptionTextView = UITextView()
        descriptionTextView.layer.borderColor = UIColor.lightGray.cgColor
        descriptionTextView.layer.borderWidth = 1
        descriptionTextView.layer.cornerRadius = 10
        descriptionTextView.font = UIFont.systemFont(ofSize: 16)
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionTextView)
        
        // Slider for Rating the Severity of the Issue
        let severityLabel = UILabel()
        severityLabel.text = "Rate severity of the issue (0 low to 10 high)"
        severityLabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        severityLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(severityLabel)
        
        let severitySlider = UISlider()
        severitySlider.minimumValue = 0
        severitySlider.maximumValue = 10
        severitySlider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(severitySlider)
        
        // Setting Constraints for Form Elements
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            locationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            locationTextField.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 8),
            locationTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            locationTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            locationTextField.heightAnchor.constraint(equalToConstant: 40),
            
            concernLabel.topAnchor.constraint(equalTo: locationTextField.bottomAnchor, constant: 20),
            concernLabel.leadingAnchor.constraint(equalTo: locationTextField.leadingAnchor),
            
            concernTextField.topAnchor.constraint(equalTo: concernLabel.bottomAnchor, constant: 8),
            concernTextField.leadingAnchor.constraint(equalTo: locationTextField.leadingAnchor),
            concernTextField.trailingAnchor.constraint(equalTo: locationTextField.trailingAnchor),
            concernTextField.heightAnchor.constraint(equalToConstant: 40),
            
            suspiciousActivityButton.topAnchor.constraint(equalTo: concernTextField.bottomAnchor, constant: 10),
            suspiciousActivityButton.leadingAnchor.constraint(equalTo: concernTextField.leadingAnchor),
            suspiciousActivityButton.trailingAnchor.constraint(equalTo: concernTextField.trailingAnchor),
            suspiciousActivityButton.heightAnchor.constraint(equalToConstant: 40),
            
            roadHazardsButton.topAnchor.constraint(equalTo: suspiciousActivityButton.bottomAnchor, constant: 10),
            roadHazardsButton.leadingAnchor.constraint(equalTo: concernTextField.leadingAnchor),
            roadHazardsButton.trailingAnchor.constraint(equalTo: concernTextField.trailingAnchor),
            roadHazardsButton.heightAnchor.constraint(equalToConstant: 40),
            
            crimeButton.topAnchor.constraint(equalTo: roadHazardsButton.bottomAnchor, constant: 10),
            crimeButton.leadingAnchor.constraint(equalTo: concernTextField.leadingAnchor),
            crimeButton.trailingAnchor.constraint(equalTo: concernTextField.trailingAnchor),
            crimeButton.heightAnchor.constraint(equalToConstant: 40),
            
            descriptionLabel.topAnchor.constraint(equalTo: crimeButton.bottomAnchor, constant: 20),
            descriptionLabel.leadingAnchor.constraint(equalTo: concernTextField.leadingAnchor),
            
            descriptionTextView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            descriptionTextView.leadingAnchor.constraint(equalTo: concernTextField.leadingAnchor),
            descriptionTextView.trailingAnchor.constraint(equalTo: concernTextField.trailingAnchor),
            descriptionTextView.heightAnchor.constraint(equalToConstant: 100),
            
            severityLabel.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 20),
            severityLabel.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor),
            
            severitySlider.topAnchor.constraint(equalTo: severityLabel.bottomAnchor, constant: 8),
            severitySlider.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor),
            severitySlider.trailingAnchor.constraint(equalTo: descriptionTextView.trailingAnchor)
        ])
    }
    
    // Helper to Create Dropdown Options as Buttons
    func createOptionButton(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    // Submit Button
    func setupSubmitButton() {
        let submitButton = UIButton(type: .system)
        submitButton.setTitle("Submit issue", for: .normal)
        submitButton.backgroundColor = .red
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.layer.cornerRadius = 10
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            submitButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

