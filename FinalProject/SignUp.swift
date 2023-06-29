//
//  SignUp.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

import SwiftUI

struct SignUp: View {
    @State private var openText = ""
    @State private var openText1 = ""
    @State private var openNum = ""
    @State private var TextTitle = "Email Address"
    @State private var TextTitle1 = "First and Last Name"
    @State private var Age = "What is your age?"
    var body: some View {
      
        
        NavigationStack {
          ZStack {
                Image("BlueBack").resizable()
                    .ignoresSafeArea()
                
              VStack{
                    Spacer()
                    Text(TextTitle)
                        .font(.title)
                        .bold()
                    TextField("Type Here", text: $openText)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(10)
                        .padding()
                    Text(TextTitle1)
                        .font(.title)
                        .bold()
                    TextField("Type Here", text: $openText1)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(10)
                        .padding()
                    Text(Age)
                        .font(.title)
                        .bold()
                    TextField("Type Here", text: $openNum)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(10)
                        .padding()
                    Button("Submit Information") {
                        TextTitle1 = "Welcome \(openText1)!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.purple)
                    Spacer()
                    
                    NavigationLink(destination: VolunteerOrResources()) {
                        Text("Next -->")
                    }
                    
                }
            }
            
            
        }
        
         }
         }
         
        struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
