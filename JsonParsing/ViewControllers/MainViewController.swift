//
//  ViewController.swift
//  JsonParsing
//
//  Created by Кирилл Лапковский on 07.05.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    
    private let link = URL(string: "https://date.nager.at/api/v2/publicholidays/2020/US")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPublicHolidays()
    }
    
    private func fetchPublicHolidays() {
        URLSession.shared.dataTask(with: link) {data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No ERROR description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let publicHolidays = try decoder.decode([Holiday].self, from: data)
                print(publicHolidays)
            } catch {
                print( error.localizedDescription)
            }
        }.resume()
    }
}


