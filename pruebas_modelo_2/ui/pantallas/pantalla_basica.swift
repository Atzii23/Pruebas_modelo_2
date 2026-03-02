//
//  pantalla_basica.swift
//  pruebas_modelo_2
//
//  Created by alumno on 02/03/26.
//
import SwiftUI

struct pantalla_basica: View {
    
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Esta pantalla me mueve a la siguiente opcion")
        
        Spacer()
        
        ForEach(controlador.mensajes, id: \.self) { mensaje in
            
            NavigationLink{
                Text("Esta es la pantalla del \(mensaje)")
            }
            label:{
                Text("Apachurra para ver mensaje \(mensaje.texto)")
            }
            .onAppear{
                print("hola, soy vista de: \(mensaje)")
            }
        }
        
        Spacer()
        
        Text("Agregar un hola mundo")
            .onTapGesture {
                controlador.agregar_mensajes()
            }
        
        NavigationLink{
            //que pantalla debe sobreponer
        }
        Label:{
            //como debe de verse el boton
        }
        
      
        Spacer()
        
    }
}

#Preview {
    NavigationStack {
        pantalla_basica()
    }
    .environment(ControladorGeneral())
}
