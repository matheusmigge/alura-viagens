//
//  MapView.swift
//  alura-viagens
//
//  Created by Migge on 12/10/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordenada: viagens[0].localizacao)
    }
}
