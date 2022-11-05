//
//  ContentView.swift
//  MCSwiftUI
//
//  Created by Jorge Alejandro Rodriguez Oviedo on 5/11/22.
//

import SwiftUI

struct ContentView: View {
    let nombres = ["Julio","Antonio", "Paco", "Jose Miguel", "paquito"]
    var body: some View {
        NavigationView{
            List {
                ForEach(nombres, id:\.self){nombre in
                    NavigationLink(destination: Detalle(nombre: nombre)) {
                        Fila(nombre: nombre)
                    }
                    
                }
            }
            .navigationTitle("Nombres")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


