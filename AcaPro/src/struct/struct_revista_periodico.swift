//
//  struct_revista_periodico.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 11/03/22.
//

import Foundation

struct RevistaOuPeriodico {
    init() {
        print("\nRevista ou artigo de periódico\n\n")
        print(referenciaRevistaOuPeriodico())
    }
    
    func referenciaRevistaOuPeriodico() -> String {
        let nomeSobrenome = nomeESobrenome()
        let complementoReferencia = informacoesBasicasRevistaOuPeriodico()
        return "Referência formatada: \n\(nomeSobrenome). \(complementoReferencia)."
    
    }
}

func informacoesBasicasRevistaOuPeriodico() -> String {
    let tituloArtigo = lerString(message: "Digite o título do artigo: ")
    let tituloRevista = lerString(message: "Digite o título da revista: ")
    let localPublicação = lerString(message: "Digite o local de publicação: ")
    let numeroVolume = lerInt(message: "Digite o número do volume: ")
    let paginasInicialFinal = lerString(message: "Digite as páginas inicial e final <x - y>: ")
    let anoPublicação = lerString(message: "Digite o ano de publicação: ")
    
    let temMesPublicacao = lerString(message: "Você tem acesso ao mês de publicação [S/N]? ")
    
    if temMesPublicacao.uppercased() == "S"{
        let mesPublicação = lerString(message: "Digite o mês de publicação: ")
        return "\(tituloArtigo). \(tituloRevista), \(localPublicação), \(numeroVolume), \(paginasInicialFinal), \(mesPublicação), \(anoPublicação)."

    } else{
        return "\(tituloArtigo). \(tituloRevista), \(localPublicação), \(numeroVolume), \(paginasInicialFinal), \(anoPublicação)."

    }
}
