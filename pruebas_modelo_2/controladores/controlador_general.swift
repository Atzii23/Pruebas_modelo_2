//
//  controlador_general.swift
//  pruebas_modelo_2
//
//  Created by alumno on 02/03/26.
//

import SwiftUI

@Observable
class ControladorGeneral{
    public var mensajes: [Mensaje]
    public var usuarios: [Usuario]
    
    init(){
        mensajes = mensajes_falsos
        usuarios = usuarios_falsos
    }
    
    func agregar_mensajes(){
        mensajes += [Mensaje(texto: "mensaje de: \(mensajes.count + 1)", id_usuario: nil)]
    }
    
    func agregar_usuarios(_ usuario_nuevo: Usuario){
        usuarios.append(usuario_nuevo)
        
        print("la cantidad actual de usuarios es \(usuarios.count)")
    }
}
