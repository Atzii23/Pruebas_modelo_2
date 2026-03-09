//
//  prevista_mensaje_vista.swift
//  pruebas_modelo_2
//
//  Created by alumno on 09/03/26.
//

import SwiftUI

struct PrevistaMensaje: View {
    var mensaje: Mensaje
    
    var body: some View {
        HStack{
            Image(systemName: "message")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundStyle(Color.blue)
            
            VStack(alignment: .leading){
                HStack{
                    //Spacer()
                    Text("\(mensaje.id_usuario ?? "Anonimo" )")
                        .background(Color.red)
                }
                .background(Color.cyan)
                
                Text("\(mensaje.texto)")
                    .background(Color.yellow)
            }
            Spacer()
        }
        .padding()
        .frame(height: 100)
        .overlay{
            RoundedRectangle(cornerRadius: 25, style: .circular)
                .stroke(.color, lineWidth: 3)
        }
    }
}

#Preview {
    PrevistaMensaje(mensaje: mensajes_falsos[0])
}
