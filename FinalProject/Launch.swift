//
//  Launch.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import SwiftUI

struct Launch: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                NavigationLink(destination: VolFeed()) {
                    Button("Show Me Volunteer Opprutunites!") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        .padding()
                }
                NavigationStack {
                    VStack {}
                }
                NavigationLink(destination: MealFeed()) {
                    Button("Find Me My Next Meal") {}
                        .buttonStyle(.borderedProminent)
                        .padding()
                    
                    struct Launch_Previews: PreviewProvider {
                        static var previews: some View {
                            Launch()
                        }
                    }
                }
            }
        }
    
