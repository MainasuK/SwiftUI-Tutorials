//
//  CircleImage.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/20.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turlerock"))
    }
}
#endif
