//
//  NetworkService.swift
//  JobVar
//
//  Created by Hamid Manafov on 01.12.20.
//

import Foundation
protocol NetworkServiceProtocol {
//    func getComment(completion: @escaping (Result<[Comment]?, Error >) -> Void)
    func getResumeModel(completion: @escaping (Result<CreatResumeModel?, Error>) -> Void)
    
}

class NetworkService: NetworkServiceProtocol {
//    func getComment(completion: @escaping (Result<[Comment]?, Error>) -> Void) {
//        let urlString = "https://jsonplaceholder.typicode.com/comments"
//        guard let url = URL(string: urlString) else {return}
//
//        URLSession.shared.dataTask(with: url) { (data, _, error) in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//
//            do {
//                let obj = try JSONDecoder().decode([Comment].self, from: data!)
//                completion(.success(obj))
//            } catch {
//                completion(.failure(error))
//            }
//        }.resume()
//    }
    
    
    func getResumeModel(completion: @escaping (Result<CreatResumeModel?, Error>) -> Void) {
        
        guard let path = Bundle.main.path(forResource: "CreatResumeModel", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        do {
            let jsonData = try Data(contentsOf: url)
            let result = try JSONDecoder().decode(CreatResumeModel.self, from: jsonData)
            completion(.success(result))
        } catch  {
            completion(.failure(error))
            print("Error: \(error)")
        }
    }
    
    
}
