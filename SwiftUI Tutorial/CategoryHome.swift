//
//  CategoryHome.swift
//  SwiftUI Tutorial
//
//  Created by Azat Kaiumov on 07.05.2020.
//  Copyright © 2020 Azat Kaiumov. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    
    @State var showProfile = false
    
    var profileButton: some View {
        Button(action: { self.showProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(hint: Text("User Profile"))
                .padding()
        }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarkData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(self.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(
                        categoryName: key,
                        items: self.categories[key]!
                    )
                }.listRowInsets(EdgeInsets())
                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }
            }
            .sheet(isPresented: self.$showProfile) {
                Text("User Profile").font(.largeTitle)
            }
        .navigationBarItems(trailing: profileButton)
            .navigationBarTitle(Text("Featured").font(.title))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
