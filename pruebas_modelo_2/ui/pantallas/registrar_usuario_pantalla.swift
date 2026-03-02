//
//  registrar_usuario_pantalla.swift
//  pruebas_modelo_2
//
//  Created by alumno on 02/03/26.
//

import SwiftUI

struct RegistrarUsuario: View{
    @State var nombre: String
    @State var instagram: String
    
    @State var edad: Int
    
    @State var apodo: String
    
    var body: some View{
        TextField("Nombre: ", text: $nombre)
    }
}
