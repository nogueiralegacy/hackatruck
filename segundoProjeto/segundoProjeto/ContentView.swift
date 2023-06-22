//
//  ContentView.swift
//  segundoProjeto
//
//  Created by Student03 on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var inputPeso: String = ""
    @State private var inputAltura: String = ""
    
    @State private var cor: Color = Color(.purple)
    @State private var estadoImc: String = ""
    
    func verificaDouble(valor: String) -> Bool {
        if Double(valor) != nil {
            return true
        }
        
        return false
    }
    
    func converteDouble(stringDouble: String) -> Double {
        return Double(stringDouble)!
    }
    
    func calculaIMC(peso: Double, altura: Double) -> Double {
        return peso / (altura * altura)
    }
    
    
    func corAdqueada(imc: Double) -> Color {
        if (imc < 18.5) {
            return Color("baixoPeso")
        }
        if (imc < 25) {
            return Color("normal")
        }
        if (imc < 30) {
            return Color("sobrePeso")
        }
        
        return Color("obesidade")
    }
    
    func estadoImc(imc: Double) -> String {
        if (imc < 18.5) {
            return ("baixoPeso")
        }
        if (imc < 25) {
            return ("normal")
        }
        if (imc < 30) {
            return ("sobrePeso")
        }
        
        return ("obesidade")
    }
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Calculadora de IMC")
                    .font(.title)
                    .bold()
            }
            
            HStack {
                TextField("Peso", text: $inputPeso)
                    .frame(width: 300, height: 30)
                    .background(Color.white)
            }
            .padding(.vertical)
            
            HStack {
                TextField("Altura", text: $inputAltura)
                    .frame(width: 300, height: 30)
                    .background(Color.white)
            }
            .padding(.vertical)
            
            
            Button("Calcular") {
                var peso: Double = 0
                var altura: Double = 0
                if (verificaDouble(valor: inputPeso) && verificaDouble(valor: inputAltura)) {
                    peso = converteDouble(stringDouble: inputPeso)
                    altura = converteDouble(stringDouble: inputAltura)
                }
                var imc = calculaIMC(peso: peso, altura: altura)
                cor = corAdqueada(imc: imc)
                estadoImc = estadoImc(imc: imc)
            } .frame(width: 120, height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
            
            Spacer()
            
            HStack {
                Text(estadoImc)
            }
            .font(.title)
            
            Spacer()
            
            Image("tabela-IMC")
                .resizable()
                .scaledToFit()
        }
        .background(cor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
