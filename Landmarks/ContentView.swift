//
//  ContentView.swift
//  Landmarks
//
//  Created by Manuel Cespedes on 2/22/23.
//

import SwiftUI

struct ContentView: View {
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
                    .foregroundColor(.black)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .background(.gray)
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
