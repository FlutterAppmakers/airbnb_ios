//
//  ProfileRowView.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 10/11/2025.
//

import SwiftUI

struct ProfileRowView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

#Preview {
    ProfileRowView(imageName: "gear", title: "Settings")
}
