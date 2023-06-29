//
//  Resources.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import SwiftUI

struct Resources: View {
    @State var isPlaying: Bool = false
    var body: some View {
        
        VStack {}
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: VolFeed()) {
                        Button("Show Me Volunteer Opprutunites!") {}
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .tint(.cyan)
                    }
                }
                
            }
        NavigationStack {
            VStack {}
        }
        NavigationLink(destination: MealFeed()) {
            Button("Find Me My Next Meal") {}
                .buttonStyle(.borderedProminent)
                .padding()
                .tint(.cyan)
            
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        
        struct Resources_Previews: PreviewProvider {
            static var previews: some View {
                Resources()
            }
        }
    }
}

