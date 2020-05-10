//
//  UserData.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 28.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var landmarks = landmarkData
    @Published var showFavoritesOnly = false
    @Published var profile = Profile.default
}
