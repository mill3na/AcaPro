//
//  struct_revista_periodico.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 11/03/22.
//

import Foundation

struct RevistaOuPeriodico {
    init() {
        print(referencia_revista_ou_periodico())
    }
    
    func referencia_revista_ou_periodico() -> String {
        let nome_do_autor = readString(message: "Digite o nome abreviado do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_do_artigo = readString(message: "Digite o título do artigo: ")
        let titulo_da_revista = readString(message: "Digite o título da revista: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let numero_do_volume = readInt(message: "Digite o número do volume: ")
        let paginas_inicial_e_final = readString(message: "Digite as páginas inicial e final <x - y>: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        
        let tem_mes_publicacao = readString(message: "Você tem acesso ao mês de publicação [S/N]? ")
        
        if tem_mes_publicacao.uppercased() == "S"{
            let mes_de_publicação = readString(message: "Digite o mês de publicação: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_artigo). \(titulo_da_revista), \(local_de_publicação), \(numero_do_volume), \(paginas_inicial_e_final), \(mes_de_publicação), \(ano_de_publicação)."

        } else{
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_artigo). \(titulo_da_revista), \(local_de_publicação), \(numero_do_volume), \(paginas_inicial_e_final), \(ano_de_publicação)."

        }
    
    
    }
}
