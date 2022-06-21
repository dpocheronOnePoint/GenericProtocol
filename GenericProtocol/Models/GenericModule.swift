//
//  GenericModule.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

struct GenericAction: Codable {
    var method: String?
    var value: String?
    
    enum CodingKeys: String, CodingKey {
        case method = "func"
        case value = "value"
    }
}

struct GenericModule: Decodable {
    var name: String?
    var actions: [GenericAction]?
    
    var realObject: AnyObject? {
        if let programmingObject = ObjectCreator.create(self.name) {
            return programmingObject as AnyObject
        }
        return nil
    }
}
