//
//  MainWorker.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

enum APIServiceError : Error {
    case badUrl, requestError, decodingError, statusError
}

class MainWorker {
    func fetchModules() async throws -> [GenericModule] {

        let url = URL(string: "https://raw.githubusercontent.com/ettibo/GenericProtocols/master/Protocols.json")
        
        let urlRequest = URLRequest(url: url!)
        
        
        guard let (data, response) = try? await URLSession.shared.data(for: urlRequest) else {
            throw APIServiceError.requestError
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIServiceError.statusError
        }
    
        guard let result = try? JSONDecoder().decode([GenericModule].self, from: data) else {
            throw APIServiceError.decodingError
        }
        
        return result
    }
}
