//
//  FeaturedLandmarks.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 08.05.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks: View {
    var featuredLandmarks: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }
    var body: some View {
        featuredLandmarks[0].image
        .resizable()
    }
}

struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks()
    }
}
