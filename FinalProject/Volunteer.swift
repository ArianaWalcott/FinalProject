//
//  Volunteer.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import SwiftUI

struct Volunteer: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                NavigationLink(destination: Text("Volunteering Opportunities Near You!") .padding() .color.pink)
                
                Spacer()
                
                NavigationLink(destination: Text("Affordable Meal Options Near You!") .padding() .color.pink)
                
                
                }
            }
    }
}

struct Volunteer_Previews: PreviewProvider {
    static var previews: some View {
        Volunteer()
    }
}
