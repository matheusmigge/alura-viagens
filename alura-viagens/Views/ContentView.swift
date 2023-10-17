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
                        NavigationLink(destination: MapView(coordenada: viagem.localizacao).navigationBarTitle("Localização")){
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationTitle("").listStyle(.plain)
//                    vvv código necesário para compatibilidade com o ipad
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
