//
//  MainInteractor.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import Foundation

class MainInteractor {
    let worker = MainWorker()
    
    func loadModules() async throws {
        
        let modules = try await worker.fetchModules()
        
    
        ModuleRunner().useModules(modules: modules)
    }
}
