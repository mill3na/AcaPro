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
        let numeroAutores = lerInt(message: "De quantos autores estamos falando? Digite 0 para autor desconhecido: ")
        
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
        } else {
            print("Opção inválida. ")
        }
    }
    
    func umAutor() -> String {
        let nomeSobrenome = nomeESobrenome()
        let complementoReferencia = informacoesBasicasLivro()
        return "Referência formatada: \n\(nomeSobrenome). \(complementoReferencia)"
        }
    
    func doisAutores() -> String {
        let nomeSobrenomePrimeiroAutor = nomeESobrenome()
        let nomeSobrenomeSegundoAutor = lerString(message: "Digite o nome do segundo autor: ")
        let complementoReferencia = informacoesBasicasLivro()
        return "Referência formatada: \n \(nomeSobrenomePrimeiroAutor); \(nomeSobrenomeSegundoAutor). \(complementoReferencia)"
        
        }
    
    func tresAutores() -> String {
        let nomeSobrenomePrimeiroAutor = nomeESobrenome()
        let nomeSobrenomeSegundoAutor = nomeESobrenome()
        let nomeSobrenomeTerceiroAutor = nomeESobrenome()
        let complementoReferencia = informacoesBasicasLivro()
        return "Referência formatada: \n \(nomeSobrenomePrimeiroAutor); \(nomeSobrenomeSegundoAutor); \(nomeSobrenomeTerceiroAutor). \(complementoReferencia)"
        
        }
    
    func muitosAutores() -> String {
        let nomeSobrenomeAutor = nomeESobrenome()
        let complementoReferencia = informacoesBasicasLivro()
            return "Referência formatada: \n \(nomeSobrenomeAutor) et al. \(complementoReferencia)"
        
        }
    
    func autorDesconhecido() -> String {
        let tituloObra = lerString(message: "Digite o título do livro: ")
        let localPublicação = lerString(message: "Digite o local de publicação: ")
        let editora = lerString(message: "Digite a editora: ")
        let anoPublicação = lerString(message: "Digite o ano de publicação: ")
        
        return "Referência formatada: \n \(tituloObra.uppercased()). \(localPublicação): \(editora), \(anoPublicação)."
    }
}
    
