//
//  ArtigoEmEventoViewModel.swift
//  AcaPro
//
//  Created by Yago Marques on 09/10/22.
//

import Foundation

final class ArtigoEmEventoViewModel {

    func start() {
        print("\nArtigo em evento\n\n")
        print(referenciaArtigoEmEvento())
    }

    func referenciaArtigoEmEvento() -> String {
        let nomeSobrenomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let informacoesBasicas = informacoesBasicasArtigoEmEvento()

        return "Referência formatada: \n \(nomeSobrenomeAutor). \(informacoesBasicas)"

    }

    func informacoesBasicasArtigoEmEvento() -> String {
        let tituloTrabalhoApresentado = lerString(message: "Digite o título do trabalho apresentado: ", primeiraMaiuscula: true)
        let tituloEvento = lerString(message: "Digite o título do evento: ", primeiraMaiuscula: true)
        let numeroEvento = lerInt(message: "Digite o número do evento: ", ano: false)
        let anoRealizacao = lerInt(message: "Digite o ano de realização: ", ano: true)
        let cidadeRealizacao = lerString(message: "Digite a cidade de realização: ", primeiraMaiuscula: true)
        let tituloDocumento = lerString(message: "Digite o título do documento (anais, resumos etc): ", primeiraMaiuscula: true)
        let localPublicacao = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let editora = lerString(message: "Digite a editora: ", primeiraMaiuscula: true)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ", ano: true)
        let paginasinicialFinal = lerString(message: "Digite as páginas inicial e final <x - y>: ", primeiraMaiuscula: false)

        return "\(tituloTrabalhoApresentado). In: \(tituloEvento.uppercased()), nº \(numeroEvento), \(anoRealizacao), \(cidadeRealizacao). \(tituloDocumento). \(localPublicacao): \(editora), \(anoPublicacao). p. \(paginasinicialFinal)"
    }

}
