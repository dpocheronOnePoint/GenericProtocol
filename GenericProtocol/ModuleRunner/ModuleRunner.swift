//
//  ModuleRunner.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

class ModuleRunner {
    func useModules(modules: [GenericModule]) {
        for module in modules {
            if let actions = module.actions {
                for action in actions {
                    if let object = module.realObject {
                        performAction(action: action, on: object)
                    }
                }
            }
        }
    }
    
    private func performAction(action: GenericAction, on object: AnyObject) {
        if let method = action.method {
            let selector = NSSelectorFromString(method)
            if object.responds(to: selector) {
                if let value = action.value {
                    print(value)
                    _ = object.perform(selector, with: value)
                } else {
                    print(selector)
                    _ = object.perform(selector)
                }
            }
        }
    }
}
