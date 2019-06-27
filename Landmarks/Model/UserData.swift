//
//  UserData.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/21.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    var didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
    
}
