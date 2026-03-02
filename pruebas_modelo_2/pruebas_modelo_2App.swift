//
//  pruebas_modelo_2App.swift
//  pruebas_modelo_2
//
//  Created by alumno on 02/03/26.
//

import SwiftUI

@main
struct pruebas_modelo_2App: App {
    @State var controlador = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            NavegadorBasico()
                .environmentObject(controlador)
        }
    }
}
