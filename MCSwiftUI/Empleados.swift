//
//  Empleados.swift
//  MCSwiftUI
//
//  Created by Jorge Alejandro Rodriguez Oviedo on 5/11/22.
//

import SwiftUI

struct EmpleadosView: View {
    @EnvironmentObject var empleados: EmpleadosModel
    var body: some View {
        NavigationView {
            List {
                ForEach(empleados.empleados){ empleado in
                    NavigationLink(destination: Detalle(empleado: empleado)) {
                        EmpleadoRow(empleado: empleado)
                    }

                    
                    
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Empleados")
            .navigationBarItems( trailing:
                                    Button(action: {
                
            }, label: {
                Image(systemName: "plus")
            })
            )
        }
        
    }
}

struct Empleados_Previews: PreviewProvider {
    static var previews: some View {
        EmpleadosView()
            .environmentObject(EmpleadosModel())
    }
}

struct EmpleadoRow: View {
    let empleado: Empleado
    @ObservedObject var imagenEmpleado = NetworkModel()
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(empleado.firstName) \(empleado.lastName)")
                Text("\(empleado.email)")
                    .font(.footnote)
            }
            Spacer()
            imagenEmpleado.avatar
                .resizable()
                .frame(width: 50, height: 50)
                .background(Color.gray)
                .clipShape(Circle())
                
        }
        .onAppear{
            imagenEmpleado.getImage(url: empleado.avatar)
        }
    }
}
