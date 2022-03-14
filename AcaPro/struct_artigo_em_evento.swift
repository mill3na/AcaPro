//
//  struct_artigo_em_revista.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation


struct ArtigoEmEvento {
    init() {
        print(referencia_artigo_em_evento())
    }
    
    func referencia_artigo_em_evento() -> String {
        let nome_do_autor = readString(message: "Digite o nome abreviado do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_do_trabalho_apresentado = readString(message: "Digite o título do trabalho apresentado: ")
        let titulo_do_evento = readString(message: "Digite o título do evento: ")
        let numero_do_evento = readString(message: "Digite o número do evento: ")
        let ano_de_realizacao = readString(message: "Digite o ano de realização: ")
        let cidade_de_realizacao = readString(message: "Digite a cidade de realização: ")
        let titulo_do_documento = readString(message: "Digite o título do documento (anais, resumos etc): ")
        let local_de_publicacao = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicacao = readInt(message: "Digite o ano de publicação: ")
        let paginas_inicial_e_final = readString(message: "Digite as páginas inicial e final <x - y>: ")
        
        return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_trabalho_apresentado). In: \(titulo_do_evento.uppercased()), nº \(numero_do_evento), \(ano_de_realizacao), \(cidade_de_realizacao). \(titulo_do_documento). \(local_de_publicacao): \(editora), \(ano_de_publicacao). p. \(paginas_inicial_e_final)"

}

}
