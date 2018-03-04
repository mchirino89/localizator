//
//  Dictionaries.swift
//  Localization
//
//  Created by Mauricio Chirino on 3/3/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

enum Indexes {
    static let fileType = "plist"
    
    enum dictionary: String {
        case List, Details
    }
    
    enum view {
        
        enum list: String {
            case title
            case names
        }
        
    }
    
}
