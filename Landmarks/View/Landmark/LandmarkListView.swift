//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/20.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct LandmarkListView : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites only")
            }
            
            ForEach(landmarkData) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkListView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkListView()
                .environmentObject(UserData())
        }
    }
}
#endif
