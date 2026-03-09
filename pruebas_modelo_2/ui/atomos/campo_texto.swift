//
//  campo.swift
//  pruebas_modelo_2
//
//  Created by alumno on 04/03/26.
//

import SwiftUI

struct CampoTexto: View{
    @Binding var entrada: String
    var placeholder: String
    
    var error: ErrorUI?
    var id: String
    
    var body: some View{
        TextField(placeholder, text: $entrada)
        
        if(error?.campo == id){
            switch error!.nivel_de_error {
            case .grave:
                Text(error!.error)
                    .foregroundStyle(Color.red)
                
                
            case .moderado:
                Text(error!.error)
                    .foregroundStyle(Color.yellow)
                
            case .ninguno:
                Text("")
            }
        }
    }
}
