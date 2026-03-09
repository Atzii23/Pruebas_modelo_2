//
//  error_en_campo_ui.swift
//  pruebas_modelo_2
//
//  Created by alumno on 04/03/26.
//

enum NivelDeError{
    case grave
    case moderado
    case ninguno
}

struct ErrorUI{
    let campo: String
    let error: String
    let nivel_de_error: NivelDeError
}

