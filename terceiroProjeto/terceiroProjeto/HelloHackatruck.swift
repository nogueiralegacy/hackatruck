//
//  HelloHackatruck.swift
//  terceiroProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct HelloHackatruck: View {
    var body: some View {
        VStack {
            Text("Hello, Hackatruck")
                .frame(width: 200, height: 200)
                .background(Color(.blue))
        }
    }
}

struct HelloHackatruck_Previews: PreviewProvider {
    static var previews: some View {
        HelloHackatruck()
    }
}
