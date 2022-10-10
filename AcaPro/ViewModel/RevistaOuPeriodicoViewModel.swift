//
//  RevistaOuPeriodicoViewModel.swift
//  AcaPro
//
//  Created by Yago Marques on 09/10/22.
//

import Foundation

final class RevistaOuPeriodicoViewModel {

    func start() {
        print("\nRevista ou artigo de periódico\n\n")
        print(referenciaRevistaOuPeriodico())
    }

    func referenciaRevistaOuPeriodico() -> String {
        let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let complementoReferencia = informacoesBasicasRevistaOuPeriodico()
        return "\n\(nomeAutor). \(complementoReferencia)."

    }

    func informacoesBasicasRevistaOuPeriodico() -> String {
        let tituloArtigo = lerString(message: "Digite o título do artigo: ", primeiraMaiuscula: true)
        let tituloRevista = lerString(message: "Digite o título da revista: ", primeiraMaiuscula: true)
        let localPublicação = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let numeroVolume = lerInt(message: "Digite o número do volume: ", ano: false)
        let paginasInicialFinal = lerString(message: "Digite as páginas inicial e final <x - y>: ", primeiraMaiuscula: false)
        let anoPublicação = lerInt(message: "Digite o ano de publicação: ", ano: true)

        let temMesPublicacao = lerString(message: "Você tem acesso ao mês de publicação [S/N]? ", primeiraMaiuscula: true)

        if temMesPublicacao.uppercased() == "S"{
            let mesPublicação = lerString(message: "Digite o mês de publicação: ", primeiraMaiuscula: true)
            return "\(tituloArtigo). \(tituloRevista), \(localPublicação), \(numeroVolume), \(paginasInicialFinal), \(mesPublicação), \(anoPublicação)."

        } else{
            return "\(tituloArtigo). \(tituloRevista), \(localPublicação), \(numeroVolume), \(paginasInicialFinal), \(anoPublicação)."

        }
    }
}
