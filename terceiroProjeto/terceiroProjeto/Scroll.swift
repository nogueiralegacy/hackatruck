//
//  Scroll.swift
//  terceiroProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                Image(systemName: "hare")
                    .resizable()
                    .scaledToFit()
                
                Image(systemName: "tortoise")
                    .resizable()
                    .scaledToFit()
                
                Image(systemName: "pawprint")
                    .resizable()
                    .scaledToFit()
                
                Image(systemName: "cloud")
                    .resizable()
                    .scaledToFit()
                
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFit()
                
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 250)
        }
        
        
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
