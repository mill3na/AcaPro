//
//  structures.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 10/03/22.
//

import Foundation

struct Livro {
    var nome_do_autor:String = ""
    var sobrenome_do_autor:String = ""
    var titulo_do_livro:String? = ""
    var subtitulo_do_livro:String? = ""
    var edicao:Int? = 0
    var local_de_publicacao:String = ""
    var editora:String = ""
    var ano_de_publicacao:Int = 0
    
    
    init() {
        let numero_de_autores = readInt(message: "De quantos autores estamos falando? ")
        
        if numero_de_autores == 1{
            print(um_autor())
        } else if numero_de_autores == 2 {
            
        }
    }
    func um_autor() -> String {
        let nome_do_autor = readString(message: "Digite o nome do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_da_obra = readString(message: "Digite o título do livro: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        let tem_subtitulo = readString(message: "Esse livro tem subtítulo [S/N]? ")
        if tem_subtitulo.uppercased() == "S"{
            
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            let tem_edicao = readString(message: "Essa obra tem edição [S/N]? ")
            if tem_edicao.uppercased() == "S"{
                let edicao_obra = readString(message: "Digite a edição (somente o número): ")
                return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra): \(subtitulo_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
            }
             return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra): \(subtitulo_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
    
}
