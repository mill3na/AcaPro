//
//  structures.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 10/03/22.
//

import Foundation

struct Livro {
    init() {
        print("\nLivro\n\n")
        let numeroAutores = lerInt(message: "De quantos autores estamos falando? Digite 0 para autor desconhecido: ", ano: false)
        
        if numeroAutores == 0 {
            print("\n\n\(autorDesconhecido())")
        }
        else if numeroAutores == 1{
            print("\n\n\(umAutor())")
        } else if numeroAutores == 2 {
            print("\n\n\(doisAutores())")
        } else if numeroAutores == 3 {
            print("\n\n\(tresAutores())")
        } else if numeroAutores > 3 {
            print("\n\n\(muitosAutores())")
        } else if numeroAutores == -1{
            print("Entrada inválida. Por favor, tente novamente.")
        }else {
            print("Opção inválida. ")
        }
    }
    
    func informacoesBasicasLivro() -> String {
        let tituloDaObra = lerString(message: "Digite o título do livro: ", primeiraMaiuscula: true)
        let localPublicação = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let editora = lerString(message: "Digite a editora: ", primeiraMaiuscula: true)
        let anoPublicação = lerInt(message: "Digite o ano de publicação: ", ano: true)
        let temSubtitulo = lerString(message: "Esse livro tem subtítulo [S/N]? ", primeiraMaiuscula: true)
        let temEdicao = lerString(message: "Essa obra tem edição [S/N]? ", primeiraMaiuscula: true)
        
        if (temSubtitulo.uppercased() == "S") && (temEdicao.uppercased() == "S") {
            let subtituloObra = lerString(message: "Digite o subtitulo da obra: ", primeiraMaiuscula: true)
            let edicaoObra = lerInt(message: "Digite a edição (somente o número): ", ano: false)
            return "\(tituloDaObra): \(subtituloObra). \(edicaoObra). ed. \(localPublicação): \(editora), \(anoPublicação)."
        }
        
        else if (temSubtitulo.uppercased() == "S") && (temEdicao.uppercased() == "N") {
            let subtituloObra = lerString(message: "Digite o subtitulo da obra: ", primeiraMaiuscula: true)
            return "\(tituloDaObra): \(subtituloObra). \(localPublicação): \(editora), \(anoPublicação)."
        }
        
        else if (temSubtitulo.uppercased() == "N") && (temEdicao.uppercased() == "S"){
            let edicaoObra = lerInt(message: "Digite a edição (somente o número): ", ano: false)
            return "\(tituloDaObra). \(edicaoObra). ed. \(localPublicação): \(editora), \(anoPublicação)."
        }
        
        else {
            return "\(tituloDaObra). \(localPublicação): \(editora), \(anoPublicação)."
        }
        
    }
    func umAutor() -> String {
        let nomeSobrenome = nomeESobrenome(cardinalidadeAutor: "")
        let complementoReferencia = informacoesBasicasLivro()
        return "\n\(nomeSobrenome). \(complementoReferencia)"
        }
    
    func doisAutores() -> String {
        let nomeSobrenomePrimeiroAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let nomeSobrenomeSegundoAutor = nomeESobrenome(cardinalidadeAutor: "segundo")
        let complementoReferencia = informacoesBasicasLivro()
        return "\n\(nomeSobrenomePrimeiroAutor); \(nomeSobrenomeSegundoAutor). \(complementoReferencia)"
        
        }
    
    func tresAutores() -> String {
        let nomeSobrenomePrimeiroAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let nomeSobrenomeSegundoAutor = nomeESobrenome(cardinalidadeAutor: "segundo")
        let nomeSobrenomeTerceiroAutor = nomeESobrenome(cardinalidadeAutor: "terceiro")
        let complementoReferencia = informacoesBasicasLivro()
        return "\n\(nomeSobrenomePrimeiroAutor); \(nomeSobrenomeSegundoAutor); \(nomeSobrenomeTerceiroAutor). \(complementoReferencia)"
        
        }
    
    func muitosAutores() -> String {
        let nomeSobrenomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let complementoReferencia = informacoesBasicasLivro()
            return "\n\(nomeSobrenomeAutor) et al. \(complementoReferencia)"
        
        }
    
    func autorDesconhecido() -> String {
        let tituloObra = lerString(message: "Digite o título do livro: ", primeiraMaiuscula: true)
        let localPublicação = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let editora = lerString(message: "Digite a editora: ", primeiraMaiuscula: true)
        let anoPublicação = lerInt(message: "Digite o ano de publicação: ", ano: true)
        
        return "n\(tituloObra.uppercased()). \(localPublicação): \(editora), \(anoPublicação)."
    }
}

