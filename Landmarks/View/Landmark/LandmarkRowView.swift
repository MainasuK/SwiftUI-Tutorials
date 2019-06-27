//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/20.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct LandmarkRowView : View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#if DEBUG
struct LandmarkRowView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: landmarkData[0])
            LandmarkRowView(landmark: landmarkData[1])
        }
        .previewLayout(PreviewLayout.sizeThatFits)
    }
}
#endif
