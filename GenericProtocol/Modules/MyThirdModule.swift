//
//  MyThirdModule.swift
//  GenericProtocol
//
//  Created by Dimitri POCHERON on 21/06/2022.
//

import UIKit

@objc
class MyThirdModule: NSObject {
    
    @objc func openUrl(url: String) {
        let uri = URL(string: url)!
        DispatchQueue.main.async {
            UIApplication.shared.open(uri, options: [:], completionHandler: nil)
        }
    }
}
