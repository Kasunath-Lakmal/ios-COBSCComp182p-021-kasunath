
//
//  UserProfile.swift
//  ios-COBSCComp182P-021
//
//  Created by kasunath on 2/29/20.
//  Copyright © 2020 kasunath. All rights reserved.
//

import Foundation

class UserProfile {
    var uid:String
    var username:String
    var photoURL:URL
    
    init(uid:String, username:String,photoURL:URL) {
        self.uid = uid
        self.username = username
        self.photoURL = photoURL
    }
}

