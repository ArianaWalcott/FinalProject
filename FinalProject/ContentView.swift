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
            VStack {
                Image("logo")
                    .imageScale(.small)
                    .foregroundColor(.accentColor)
                
                
                NavigationStack {
                    VStack {
                        NavigationLink (destination: Text("...")) {
                            Text("Sign in")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .background(Color.teal, in: RoundedRectangle(cornerRadius: 20))
                        }
                        
                        NavigationLink (destination: Text("...")) {
                            Text("Sign up")
                                .font(.title3)
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                                .background(Color.teal, in: RoundedRectangle(cornerRadius: 20))
                        }
                    }
                }
                
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
