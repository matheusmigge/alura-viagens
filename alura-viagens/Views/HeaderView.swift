//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Migge on 12/10/23.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { screen in
            VStack {
                VStack {
                    Text("alura viagens")
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
                    Text("ESPECIAL")
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: screen.size.width, height: self.horizontalSizeClass == .compact ? 180 : 310, alignment: .top)
                .background(Color.purple)
                .foregroundColor(Color.white)
                
                HStack {
                    Button("Hotéis") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .background(.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: self.horizontalSizeClass == .compact ? 50 : screen.size.width/4)
                    
                    Spacer()
                    
                    Button("Pacotes") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .background(.orange)
                    .offset(x: self.horizontalSizeClass == .compact ? -50 : -screen.size.width/4)
                    
                }
                .offset(y: self.horizontalSizeClass == .compact ? -35 : -50)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
//            .environment(\.horizontalSizeClass, .compact)
//            .previewLayout(.fixed(width: 400, height: 220))
//        HeaderView()
//            .environment(\.horizontalSizeClass, .compact)
//            .previewLayout(.fixed(width: 835, height: 310))

    }
}
