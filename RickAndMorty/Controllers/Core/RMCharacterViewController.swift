//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Арайлым Бакенова on 24.03.2023.
//

import UIKit

/// Controller to show and serach for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endPoint: .character, queryParameters: [
            URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alive")
        ])
        print(request.url)
        
        RMService.shared.execute(.listCharacterResonse, expecting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
                print("Total pages: " + String(model.info.pages))
                print("Count: " + String(model.info.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
