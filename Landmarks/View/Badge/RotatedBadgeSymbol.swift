//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/21.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
#endif
