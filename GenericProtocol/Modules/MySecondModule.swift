//
//  MySecondModule.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

@objc
class MySecondModule: NSObject {
    
    @objc func sayHello() {
        let name = String(describing: type(of: self))
        print("What's up? My name is \(name)")
    }
    
    @objc func showPopup() {
    
    }
    
    @objc func sayGoodBye() {
        let name = String(describing: type(of: self))
        print("See you, My name was \(name)")
    }
}
