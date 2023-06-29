//
//  MealFeed.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/28/23.
//

import SwiftUI

struct MealFeed: View {
    var body: some View {
        TabView {
            ViewA()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Calls")
                        .font(.system(size: 100.0))
                }
           
                        }
                }
            }
            
            struct MealFeed_Previews: PreviewProvider {
                static var previews: some View {
                    MealFeed()
                }
            }
        
    
    

