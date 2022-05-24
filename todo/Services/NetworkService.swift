//
//  NetworkService.swift
//  todo
//
//  Created by Vitalii Navrotskyi on 24.05.2022.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    
    let URL_BASE = "http://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    let session = URLSession(configuration: .default)
    
    func getTodos() {
        let url = URL(string: "\(URL_BASE)")!
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error {
                debugPrint(error.localizedDescription)
                
                return
            }
            
            guard let data = data, let response = response as? HTTPURLResponse else {
                debugPrint("Invalid data or response")
                return
            }
            
            do {
                if response.statusCode == 200 {
                    let items = try JSONDecoder().decode(Todos.self, from: data)
                    print(items)
                    //handle success
                } else {
                    let err = try JSONDecoder().decode(APIError.self, from: data)
                    // handle error
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
            
            
        }
        task.resume()
    }
    
    func addTodo(todo: Todo) {
        
    }
}
