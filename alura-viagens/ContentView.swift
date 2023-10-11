//
//  ContentView.swift
//  alura-viagens
//
//  Created by Migge on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { screen in
            VStack {
                VStack {
                    Text("alura viagens")
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: screen.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                .foregroundColor(Color.white)
                
                HStack {
                    Button("Hotéis") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: 17))
                    .frame(width: 100, height: 50)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: 50)
                    
                    Spacer()
                    
                    Button("Pacotes") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: 17))
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                    .offset(x: -50)
                    
                }
                .offset(y: -25)
                
                List(viagens) { viagem in
                    
                    VStack(alignment: .leading) {
                        Text(viagem.titulo)
                        Image(viagem.imagem).resizable()
                            .frame(height: 125)
                        HStack{
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
