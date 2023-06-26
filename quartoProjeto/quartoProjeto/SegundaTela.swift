//
//  SegundaTela.swift
//  quartoProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct SegundaTela: View {
    var body: some View {
            VStack {
                NavigationLink (destination: QuartaTela()){
                    Text("QuartaTela")
                }
            }
    }
}

struct SegundaTela_Previews: PreviewProvider {
    static var previews: some View {
        SegundaTela()
    }
}
