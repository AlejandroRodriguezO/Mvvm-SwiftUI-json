//
//  MCSwiftUIApp.swift
//  MCSwiftUI
//
//  Created by Jorge Alejandro Rodriguez Oviedo on 5/11/22.
//

import SwiftUI

@main
struct MCSwiftUIApp: App {
    @StateObject var empleados = EmpleadosModel()
    
    var body: some Scene {
        WindowGroup {
            EmpleadosView()
                .environmentObject(empleados)
        }
    }
}
