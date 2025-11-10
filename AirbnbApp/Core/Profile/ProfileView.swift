//
//  ProfileView.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 10/11/2025.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack (alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning you're next trip.")
                }
                
                
                Button("log in") {
                    
                }
                .foregroundStyle(.white)
                .frame(width: 360, height: 44)
                .fontWeight(.semibold)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 9))
                
                
                HStack {
                    Text("Don't have an account ?")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
                
                
            }
            
            // Profile options
            VStack(spacing: 24) {
                ProfileRowView(imageName: "gear", title: "Settings")
                ProfileRowView(imageName: "gear", title: "Accessibility")
                ProfileRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
            
            
        }
        .padding()
    }
    
}

#Preview {
    ProfileView()
}
