//
//  CategoryRow.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/25.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    var categroyName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categroyName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { landmark in
                        NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                            CategroyItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
            .padding(.leading, 7.5)
        }
    }
}

struct CategroyItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            landmark
                .image(forSize: 155)
                .renderingMode(.original)
                .cornerRadius(5)
            Text(landmark.name)
                .color(.primary)
                .font(.caption)
        }
        .padding(.leading, 7.5)
        .padding(.trailing, 7.5)
    }
}

#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categroyName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(4))
        )
    }
}
#endif
