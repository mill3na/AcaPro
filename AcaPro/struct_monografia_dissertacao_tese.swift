//
//  struct_monografia_dissertacao_tese.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation


struct MonografiaDissertacaoTese {
    init() {
        print(monografia_dissertacao_tese())
    }
    
    func monografia_dissertacao_tese() -> String {
        let nome_do_autor = readString(message: "Digite o nome abreviado do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_do_trabalho = readString(message: "Digite o título do trabalho: ")
        let ano_de_apresentacao = readString(message: "Digite o ano de apresentação: ")
        let numero_de_folhas_volumes = readInt(message: "Digite o total de páginas: ")
        let categoria = readString(message: "Digite a categoria (área de concentração): ")
        let instituição = readString(message: "Digite a instituição: ")
        let local_de_publicacao = readString(message: "Digite o local de publicação: ")
        let ano_de_defesa = readInt(message: "Digite o ano de defesa: ")

        let tem_subtitulo = readString(message: "Esse trabalho tem subtítulo [S/N]? ")
        
        if tem_subtitulo.uppercased() == "S"{
            let subtitulo_do_trabalho = readString(message: "Digite o subtítulo: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_trabalho): \(subtitulo_do_trabalho). \(ano_de_apresentacao). \(numero_de_folhas_volumes). \(categoria) - \(instituição), \(local_de_publicacao), \(ano_de_defesa)."
        }
        else{
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_trabalho). \(ano_de_apresentacao). p. \(numero_de_folhas_volumes). \(categoria) - \(instituição), \(local_de_publicacao), \(ano_de_defesa)."
        }

}

}
