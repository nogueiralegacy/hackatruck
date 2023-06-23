//
//  Message.swift
//  terceiroProjeto
//
//  Created by Student03 on 23/06/23.
//

import SwiftUI

struct Message: View {
    func preencheVetorItem(quantidade: Int) -> [String] {
        var vetor: [String] = []
        
        for indice in 1 ... quantidade {
            vetor.append("Item \(indice)")
        }
        
        return vetor
    }
    
    var body: some View {
        
        List(preencheVetorItem(quantidade: 50), id: \.self) {
            item in Text(item)
        }
        }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}
