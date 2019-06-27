//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by MainasuK Cirno on 2019/6/27.
//  Copyright © 2019 MainasuK Cirno. All rights reserved.
//

import SwiftUI

struct ProfileEditor : View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField($profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases.identified(by: \.self)) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Goal Date").bold()
                DatePicker(
                    $profile.goalDate,
                    minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate),
                    maximumDate: Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate),
                    displayedComponents: .date
                )
            }
            .padding(.top)
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews : PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif