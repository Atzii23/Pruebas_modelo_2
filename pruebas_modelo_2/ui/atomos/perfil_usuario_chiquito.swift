//
//  perfil_usuario_chiquito.swift
//  pruebas_modelo_2
//
//  Created by alumno on 06/03/26.
//

import SwiftUI

struct EtiquetaUsuarioPerfil: View {
    var usuario: Usuario
    
    var body : some View {
        VStack{
            Text("Esta conectado el: ")
            ZStack(alignment: .bottom){
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(Circle())
                    .foregroundStyle(Color .gray)
                
                    .overlay{
                        RoundedRectangle(cornerRadius: 50, style: .circular)
                            .stroke(style: StrokeStyle(lineWidth: 2))
                            .foregroundStyle(Color.green)
                        
                        Circle()
                            .frame(width: 20)
                            .foregroundStyle(usuario.conectado ? Color.green : Color.red)
                            .offset(x: 35, y: 40)
                    }
                
                    .padding(.bottom, 30)
                
                HStack{
                    
                    
                    Text("\(usuario.apodo)")
                        .foregroundStyle(Color.blue)
                }
            }
        }
        
        
        .padding(25)
        .cornerRadius(25)
        .background(Color.grisBajo)
        .overlay{
            RoundedRectangle(cornerRadius: 15, style: .circular)
                .stroke(style: StrokeStyle(lineWidth: 2))
                .foregroundStyle(Color.color)
            
        }
    }
}

#Preview{
    EtiquetaUsuarioPerfil(usuario: usuarios_falsos[0])
}

