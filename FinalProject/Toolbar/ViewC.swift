//
//  ViewC.swift
//  FinalProject
//
//  Created by Antonio Walcott on 6/29/23.
//

import SwiftUI

struct ViewC: View {
    var body: some View {
        ZStack{
            Color.white
            
            Image(systemName: "phone.fill")
                .foregroundColor(Color.black)
                .font(.system(size: 100.0))
        }
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
