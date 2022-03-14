//
//  structures.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 10/03/22.
//

import Foundation

struct Livro {
    init() {
        let numero_de_autores = readInt(message: "De quantos autores estamos falando? Digite 0 para autor desconhecido: ")
        
        if numero_de_autores == 0 {
            print("\n\n\(autor_desconhecido())")
        }
        else if numero_de_autores == 1{
            print("\n\n\(um_autor())")
        } else if numero_de_autores == 2 {
            print("\n\n\(dois_autores())")
        } else if numero_de_autores == 3 {
            print("\n\n\(tres_autores())")
        } else if numero_de_autores > 3 {
            print("\n\n\(muitos_autores())")
        } else {
            print("Opção inválida. ")
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
        let tem_edicao = readString(message: "Essa obra tem edição [S/N]? ")
       
        if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "S") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra): \(subtitulo_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "N") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra): \(subtitulo_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "N") && (tem_edicao.uppercased() == "S"){
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else {
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        }
    
    func dois_autores() -> String {
        let nome_do_autor = readString(message: "Digite o nome do primeiro autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do primeiro autor: ")
        let nome_do_segundo_autor = readString(message: "Digite o nome do segundo autor: ")
        let sobrenome_do_segundo_autor = readString(message: "Digite o sobrenome do segundo autor: ")
        let titulo_da_obra = readString(message: "Digite o título do livro: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        let tem_subtitulo = readString(message: "Esse livro tem subtítulo [S/N]? ")
        let tem_edicao = readString(message: "Essa obra tem edição [S/N]? ")
       
        if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "S") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor). \(titulo_da_obra): \(subtitulo_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "N") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor). \(titulo_da_obra): \(subtitulo_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "N") && (tem_edicao.uppercased() == "S"){
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor). \(titulo_da_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else {
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor). \(titulo_da_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        }
    
    func tres_autores() -> String {
        let nome_do_autor = readString(message: "Digite o nome do primeiro autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do primeiro autor: ")
        let nome_do_segundo_autor = readString(message: "Digite o nome do segundo autor: ")
        let sobrenome_do_segundo_autor = readString(message: "Digite o sobrenome do segundo autor: ")
        let nome_do_terceiro_autor = readString(message: "Digite o nome do terceiro autor: ")
        let sobrenome_do_terceiro_autor = readString(message: "Digite o sobrenome do terceiro autor: ")
        let titulo_da_obra = readString(message: "Digite o título do livro: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        let tem_subtitulo = readString(message: "Esse livro tem subtítulo [S/N]? ")
        let tem_edicao = readString(message: "Essa obra tem edição [S/N]? ")
       
        if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "S") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor); \(sobrenome_do_terceiro_autor.uppercased()), \(nome_do_terceiro_autor). \(titulo_da_obra): \(subtitulo_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "N") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor); \(sobrenome_do_terceiro_autor.uppercased()), \(nome_do_terceiro_autor). \(titulo_da_obra): \(subtitulo_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "N") && (tem_edicao.uppercased() == "S"){
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor); \(sobrenome_do_terceiro_autor.uppercased()), \(nome_do_terceiro_autor). \(titulo_da_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else {
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor); \(sobrenome_do_segundo_autor.uppercased()), \(nome_do_segundo_autor); \(sobrenome_do_terceiro_autor.uppercased()), \(nome_do_terceiro_autor). \(titulo_da_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        }
    
    func muitos_autores() -> String {
        let nome_do_autor = readString(message: "Digite o nome do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_da_obra = readString(message: "Digite o título do livro: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        let tem_subtitulo = readString(message: "Esse livro tem subtítulo [S/N]? ")
        let tem_edicao = readString(message: "Essa obra tem edição [S/N]? ")
       
        if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "S") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor) et al. \(titulo_da_obra): \(subtitulo_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "S") && (tem_edicao.uppercased() == "N") {
            let subtitulo_obra = readString(message: "Digite o subtitulo da obra: ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor) et al. \(titulo_da_obra): \(subtitulo_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else if (tem_subtitulo.uppercased() == "N") && (tem_edicao.uppercased() == "S"){
            let edicao_obra = readString(message: "Digite a edição (somente o número): ")
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor) et al. \(titulo_da_obra). \(edicao_obra). ed. \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        
        else {
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor) et al. \(titulo_da_obra). \(local_de_publicação): \(editora), \(ano_de_publicação)."
        }
        }
    
    func autor_desconhecido() -> String {
        let titulo_da_obra = readString(message: "Digite o título do livro: ")
        let local_de_publicação = readString(message: "Digite o local de publicação: ")
        let editora = readString(message: "Digite a editora: ")
        let ano_de_publicação = readString(message: "Digite o ano de publicação: ")
        
        return "Referência formatada: \n \(titulo_da_obra.uppercased()). \(local_de_publicação): \(editora), \(ano_de_publicação)."
    }
}
    
