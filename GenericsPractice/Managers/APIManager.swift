//
//  APIManager.swift
//  GenericsPractice
//
//  Created by Nelson Aquino Jr  on 4/23/22.
//

import Foundation

class APIManager {
    static let shared = APIManager()
    
    private init() {}
    
    // Perform an api request with an escaping result (return T, or an error) and returns void for the closure. The parameter is generic as long as it's codable.
    public func performRequest<T: Codable>(url: String, returnType: T.Type, completion: @escaping ((Result<T, Error>) -> Void)) {
        
        print("Performing API request")
        let task = URLSession.shared.dataTask(with: URL(string:url)!) { data, response, error in
            guard let data = data, error == nil else {return}
            
            var decodedResult : T?
            
            do {
                decodedResult = try JSONDecoder().decode(T.self, from: data)
                
            } catch {
               
            }
            
            guard let result = decodedResult else {
                return
            }
            
            completion(.success(result))
        }
        task.resume()
    }
}
