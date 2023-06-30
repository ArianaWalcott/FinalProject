//
//  ContentView.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/27/23.
//

    
    import SwiftUI
    
struct ContentView: View {
    var body: some View {
        NavigationStack {
    ZStack {
        Image("PinkBack").resizable()
            .ignoresSafeArea()
       VStack {
            Image("FindMy")
               .resizable()
               .frame(width: 600, height: 320.0)
               .imageScale(.small)
                NavigationLink(destination: SignUp()) {
                                Text("Sign Up ")
                            }
                                   .font(.title3)
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding()
                                        .background(Color.purple, in: RoundedRectangle(cornerRadius: 20))
                                }
    }
    
           }
            }
        }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

