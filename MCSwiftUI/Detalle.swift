//
//  Detalle.swift
//  MCSwiftUI
//
//  Created by Jorge Alejandro Rodriguez Oviedo on 5/11/22.
//

import SwiftUI

struct Detalle: View {
    @ObservedObject var imagenEmpleado = NetworkModel()
    let empleado: Empleado
    
    var body: some View {
        
        VStack {
            imagenEmpleado.avatar
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color.gray)
                .clipShape(Circle())
            Text("\(empleado.firstName) \(empleado.lastName)")
                .font(.title)
            Text("\(empleado.email)")
                .font(.footnote)
        }
        .onAppear{
            imagenEmpleado.getImage(url: empleado.avatar)
        }
    }
}


