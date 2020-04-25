//
//  ContentView.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 24.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LandmarkDetail(landmark: landmarkData[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
