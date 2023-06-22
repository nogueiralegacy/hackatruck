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
    
    func calculaIMC(peso: Double, altura: Double) -> Double?{
        if altura != 0  && peso != 0{
            return peso / (altura * altura)
        }
        
        return nil
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
                let peso = Double(inputPeso) ?? 0.0
                let altura = Double(inputAltura) ?? 0.0
                
                let imc = calculaIMC(peso: peso, altura: altura)
                if (imc == nil || peso < 0 ||  altura < 0) {
                   cor = Color(.red)
                   estadoImc = "Valores inválidos"
               }
                else   {
                    cor = corAdqueada(imc: imc!)
                    estadoImc = estadoImc(imc: imc!)
                }
                 
                
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
