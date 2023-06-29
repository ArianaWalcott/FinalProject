//
//  Volunteer.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import SwiftUI

struct Volunteer: View {
    @State var isPlaying: Bool = false
    var body: some View {
        
        NavigationStack {
            VStack {
                
                NavigationLink(destination: VolFeed()) {
                    Button("Show Me Volunteer Opportunites!") {}
                        .buttonStyle(.borderedProminent)
                        .padding()
                        .tint(.pink)
                    
                    NavigationLink(destination: MealFeed()) {
                        Button("Show Me Affordable Options Near Me") {}
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .tint(.pink)
                        
                    }
                }
            }
struct Volunteer_Previews: PreviewProvider {
    static var previews: some View {
        Volunteer()
                    
                }
            }
        }
    }
}
