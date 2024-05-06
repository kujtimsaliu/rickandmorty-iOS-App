//
//  RMCharacterViewController.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 5.5.24.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"

        let request = RMRequest(
            endpoint: .character,
            pathComponents: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        
        
        
        
    }
    

    

}
