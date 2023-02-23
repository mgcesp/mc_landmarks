//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Manuel Cespedes on 2/22/23.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack (alignment: .center, spacing: 16) {
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading, spacing: 8){
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.bold)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here...")
            }
            .padding()
            Spacer()
        }
        .background(.gray)
        .foregroundColor(.white)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
