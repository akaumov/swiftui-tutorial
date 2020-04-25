//
//  LandmarkDetail.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 25.04.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                CircleImage(image: landmark.image, diameter: 250)
                    .offset(y: 0)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.title)
                        Text(landmark.park)
                            .font(.subheadline)
                    }
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }.padding()
            }
            .offset(y: -100)
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
