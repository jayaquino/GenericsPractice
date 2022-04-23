//
//  ViewController.swift
//  GenericsPractice
//
//  Created by Nelson Aquino Jr  on 4/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var detailOne: UILabel!
    @IBOutlet weak var detailTwo: UILabel!
    @IBOutlet weak var detailThree: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let title = sender.titleLabel?.text else {return}
        
        switch title {
            
        case "Beer":
            APIManager.shared.performRequest(url: "https://random-data-api.com/api/beer/random_beer", returnType: Beer.self) { result in
                switch result{
                case .success(let beer):
                    DispatchQueue.main.async {
                        self.detailOne.text = "Name: \(beer.name)"
                        self.detailTwo.text = "Brand: \(beer.brand)"
                        self.detailThree.text = "Style: \(beer.style)"
                    }
                case .failure(_):
                    break
                }
            }
        case "Dessert":
            APIManager.shared.performRequest(url: "https://random-data-api.com/api/dessert/random_dessert", returnType: Dessert.self) { result in
                switch result {
                case .success(let dessert):
                    DispatchQueue.main.async {
                        self.detailOne.text = "Flavor: \(dessert.flavor)"
                        self.detailTwo.text = "Topping: \(dessert.topping)"
                        self.detailThree.text = "Style: \(dessert.variety)"
                    }
                case .failure(_):
                    break
                }
            }
        case "Vehicle":
            APIManager.shared.performRequest(url: "https://random-data-api.com/api/vehicle/random_vehicle", returnType: Vehicle.self) { result in
                switch result {
                case .success(let vehicle):
                    DispatchQueue.main.async {
                        self.detailOne.text = "Make & Model: \(vehicle.make_and_model)"
                        self.detailTwo.text = "Color: \(vehicle.color)"
                        self.detailThree.text = "Transmission: \(vehicle.transmission)"
                    }
                case .failure(_):
                    break
                }
            }
        case "Nation":
            APIManager.shared.performRequest(url: "https://random-data-api.com/api/nation/random_nation", returnType: Nation.self) { result in
                switch result{
                case .success(let nation):
                    DispatchQueue.main.async {
                        self.detailOne.text = "Nationality: \(nation.nationality)"
                        self.detailTwo.text = "Capital: \(nation.capital)"
                        self.detailThree.text = "Language: \(nation.language)"
                    }
                case .failure(_):
                    break
                }
            }
        case "Restaurant":
            APIManager.shared.performRequest(url: "https://random-data-api.com/api/restaurant/random_restaurant", returnType: Restaurant.self) { result in
                switch result {
                case .success(let restaurant):
                    DispatchQueue.main.async {
                        self.detailOne.text = "Name: \(restaurant.name)"
                        self.detailTwo.text = "Type: \(restaurant.type)"
                        self.detailThree.text = "Description: \(restaurant.description)"
                    }
                case .failure(_):
                    break
                }
            }
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
