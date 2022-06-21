//
//  MyFirstModule.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

@objc
class MyFirstModule: NSObject {
    
    @objc func sayHello() {
        let name = String(describing: type(of: self))
        print("Hello My name is \(name)")
    }
    
    @objc func showPopup() {
    
    }
    
    @objc func sayGoodBye() {
        let name = String(describing: type(of: self))
        print("GoodBye My name was \(name)")
    }
}
