//
//  ContentView.swift
//  alura-viagens
//
//  Created by Migge on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView{
            GeometryReader { screen in
                
                VStack {
                    HeaderView()
                        .frame(width: screen.size.width, height: self.horizontalSizeClass == .compact ? 210 : 350, alignment: .top)
                    
                    List(viagens) { viagem in
                        NavigationLink(destination: MapView(coordenada: viagem.localizacao)){
                            CelulaViagemView(viagem: viagem)
                        }
                    }.listStyle(.plain)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
