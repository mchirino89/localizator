//
//  Localizator.swift
//  Localization
//
//  Created by Mauricio Chirino on 3/3/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import Foundation

struct Localizator {
    
    private static func getViewDictionary(_ forResource: Indexes.dictionary) -> NSDictionary {
        let localizableDictionary: NSDictionary! = {
            if let path = Bundle.main.path(forResource: forResource.rawValue, ofType: Indexes.fileType) {
                return NSDictionary(contentsOfFile: path)
            }
            fatalError("\(forResource.rawValue) file NOT found")
        }()
        return localizableDictionary
    }
    
    static func localized(_ indexKey: String, _ viewResource: Indexes.dictionary) -> Array<String> {
        let viewDictionary = getViewDictionary(viewResource)
        print(indexKey)
        if let localizedContainer = viewDictionary.value(forKey: indexKey) as? Array<String> {
            return localizedContainer
        } else if let localizedItem = viewDictionary.value(forKey: indexKey) as? String {
            return [localizedItem]
        } else {
            assertionFailure("Missing translation for: \(indexKey)")
            return ["dhufvdfiusdiubdsf"]
        }
    }
}

extension String {
    func localized(_ viewDictionary: Indexes.dictionary) -> String {
        return Localizator.localized(self, viewDictionary).first!
    }
}

extension Array {
    func localized(_ containerKey: String, _ viewDictionary: Indexes.dictionary) -> Array<String> {
        return Localizator.localized(containerKey, viewDictionary)
    }
}

