//
//  ViewController.swift
//  Parsing
//
//  Created by Айтолкун Анарбекова on 6/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFilms()
        
    }
    private func fetchFilms() {
        guard let url = URL(string: "https://www.omdbapi.com/?apikey=2d5a19e0&r=json&s=rings") else {return}
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description" )
                return
            }
            let decoder = JSONDecoder()
            do {
                let films = try decoder.decode(SearchResult.self, from: data)
                print(films)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
        
    }

}

