//
//  CircleImage.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 24.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var diameter: CGFloat
    
    var body: some View {
        image
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: diameter, height: diameter)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image, diameter: 300)
    }
}
