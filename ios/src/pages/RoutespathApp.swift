//
//  routesApp.swift
//  routes

import UIKit
import MapKit

class RoutesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupGreetingLabel()
        setupTabBar()
        setupSearchBar()
        setupMapView()
        setupBottomNavBar()
    }
    
    func setupGreetingLabel() {
        let greetingLabel = UILabel()
        greetingLabel.text = "Hi Aishani"
        greetingLabel.font = UIFont.boldSystemFont(ofSize: 32)
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greetingLabel)
        
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
    func setupTabBar() {
        let carpoolButton = UIButton()
        let routesButton = UIButton()
        let safetyButton = UIButton()
        
        let buttons = [carpoolButton, routesButton, safetyButton]
        let buttonTitles = ["Carpool", "Routes", "Safety"]
        
        for (index, button) in buttons.enumerated() {
            button.setTitle(buttonTitles[index], for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = index == 1 ? UIColor.red : UIColor.systemGray6 // Highlight Routes tab
            button.layer.cornerRadius = 10
            button.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(button)
        }
        
        NSLayoutConstraint.activate([
            carpoolButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            carpoolButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            carpoolButton.widthAnchor.constraint(equalToConstant: 100),
            carpoolButton.heightAnchor.constraint(equalToConstant: 40),
            
            routesButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            routesButton.leadingAnchor.constraint(equalTo: carpoolButton.trailingAnchor, constant: 10),
            routesButton.widthAnchor.constraint(equalToConstant: 100),
            routesButton.heightAnchor.constraint(equalToConstant: 40),
            
            safetyButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            safetyButton.leadingAnchor.constraint(equalTo: routesButton.trailingAnchor, constant: 10),
            safetyButton.widthAnchor.constraint(equalToConstant: 100),
            safetyButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    func setupSearchBar() {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search here"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchBar.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupMapView() {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mapView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    func setupBottomNavBar() {
        let homeButton = UIButton()
        let exploreButton = UIButton()
        let accountButton = UIButton()
        
        let buttons = [homeButton, exploreButton, accountButton]
        let buttonTitles = ["Home", "Explore", "Account"]
        let buttonImages = ["house", "magnifyingglass", "person"] // System icons
        
        for (index, button) in buttons.enumerated() {
            button.setTitle(buttonTitles[index], for: .normal)
            button.setImage(UIImage(systemName: buttonImages[index]), for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
            view.addSubview(button)
        }
        
        NSLayoutConstraint.activate([
            homeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            homeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            homeButton.widthAnchor.constraint(equalToConstant: 80),
            homeButton.heightAnchor.constraint(equalToConstant: 40),
            
            exploreButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            exploreButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exploreButton.widthAnchor.constraint(equalToConstant: 80),
            exploreButton.heightAnchor.constraint(equalToConstant: 40),
            
            accountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            accountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            accountButton.widthAnchor.constraint(equalToConstant: 80),
            accountButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}

