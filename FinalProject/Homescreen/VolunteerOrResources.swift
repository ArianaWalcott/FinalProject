//
//  VolunteerOrResources.swift
//  FinalProject
//
//  Created by Nikita Mandalika on 6/28/23.
//

import SwiftUI

struct VolunteerOrResources: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("GreenBack").resizable()
                    .ignoresSafeArea()
                
                
                
                VStack {
                    Text("Volunteering or in need of Resources?")
                        .font(.title)
                        .fontWeight(.medium)
                      
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 300, alignment: .topLeading)
                           HStack(spacing:100) {
                               Text("Volunteer")
                                   .font(.headline)
                                   
                               Text("Resources")
                                   .font(.headline)
                           }
                       HStack(spacing:100) {
                           NavigationLink(destination: Volunteer()) {
                               Text("Click Here")
                                   
                                   .foregroundColor(Color.white)
                                   .padding()
                                   .background(Image("PinkBack"))
                                   .cornerRadius(15)
                           }
                           NavigationLink(destination: Resources()) {
                               Text("Click Here")
                                   .foregroundColor(Color.white)
                                   .padding()
                        .background(Image("BlueBack"))
                                   .cornerRadius(15)
                           }
                           
                       }
                }
            }
         
            }
        
    }
}

struct VolunteerOrResources_Previews: PreviewProvider {
    static var previews: some View {
        VolunteerOrResources()
    }
}
