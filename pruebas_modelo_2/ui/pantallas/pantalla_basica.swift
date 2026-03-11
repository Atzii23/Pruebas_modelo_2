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
        
        
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(controlador.usuarios){usuario in
                    NavigationLink{
                        Text("Esta es la pantalla del \(usuario)")
                    }
                    label:{
                        EtiquetaUsuarioPerfil(usuario:usuario)
                        .padding(3)
                        
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .frame(height: 250)
        ScrollView(.vertical){
                    LazyVStack{
                        ForEach(controlador.mensajes){ mensaje in
                            NavigationLink {
                                Text("Esta es la pantalla del \(mensaje)")
                            }
                            label: {
                                PrevistaMensaje(mensaje: mensaje)
                                    .padding(8)
                                
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                
        
        Spacer()
            .frame(height: 20)
        Text("Agregar un hola mundo")
            .foregroundStyle(Color.white)
            .onTapGesture {
                controlador.agregar_mensajes()
            }
            
            .padding(15)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
            .overlay{
               
                RoundedRectangle(cornerRadius: 20, style: .circular)
                    .stroke(.white, lineWidth: 2)
                
            }
            
        
        NavigationLink{
            RegistrarUsuario()
            //que pantalla debe sobreponer
        }
        label:{
            Text("Agregar usuario")
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
