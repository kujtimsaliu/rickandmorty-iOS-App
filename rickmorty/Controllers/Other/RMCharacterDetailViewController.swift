//
//  RMCharacterDetailViewController.swift
//  rickmorty
//
//  Created by Kujtim Saliu on 8.5.24.
//

import UIKit



/// Controller to show info about single character
final class RMCharacterDetailViewController: UIViewController {
    private let viewModel: RMCharacterDetailViewViewModel
    init(viewModel: RMCharacterDetailViewViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
    
    // MARK: - Lifecycly
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
        
    }
    

    


}
