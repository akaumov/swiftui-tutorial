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
    @EnvironmentObject var userData: UserData
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var isFavorite: Bool {
        userData.landmarks[landmarkIndex].isFavorite
    }

    func toggleFavorite() {
        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
    }
    
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
                        HStack {
                            Text(landmark.name)
                                .font(.title)
                            
                            Button(action: {
                                self.toggleFavorite()
                            }) {

                                if isFavorite {
                                    Image(systemName: "star.fill")
                                        .imageScale(.medium)
                                        .foregroundColor(Color.yellow)
                                } else {
                                    Image(systemName: "star.fill")
                                        .imageScale(.medium)
                                        .foregroundColor(Color.gray)
                                }
                            }
                            
                        }
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
        }.navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}
