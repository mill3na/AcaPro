//
//  MonografiaDissertacaoTeseViewModel.swift
//  AcaPro
//
//  Created by Yago Marques on 09/10/22.
//

import Foundation

final class MonografiaDissertacaoTeseViewModel {

    func start() {
        print("\nMonografia, dissertação ou tese\n\n")
        print(monografiaDissertacaoTese())
    }

    func monografiaDissertacaoTese() -> String {
        let nomeSobrenomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let informacoesComplementares = informacoesBasicasMonografiaDissertacaoTese()
        return "\n\(nomeSobrenomeAutor). \(informacoesComplementares)"
    }

    func informacoesBasicasMonografiaDissertacaoTese() -> String {
        let tituloTrabalho = lerString(message: "Digite o título do trabalho: ", primeiraMaiuscula: true)
        let anoApresentacao = lerInt(message: "Digite o ano de apresentação: ", ano: true)
        let numeroPaginas = lerInt(message: "Digite o total de páginas: ", ano: false)
        let categoria = lerString(message: "Digite a categoria (área de concentração): ", primeiraMaiuscula: true)
        let instituição = lerString(message: "Digite a instituição: ", primeiraMaiuscula: true)
        let localPublicacao = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let anoDefesa = lerInt(message: "Digite o ano de defesa: ", ano: true)

        let temSubtitulo = lerString(message: "Esse trabalho tem subtítulo [S/N]? ", primeiraMaiuscula: true)

        if temSubtitulo.uppercased() == "S"{
            let subtituloTrabalho = lerString(message: "Digite o subtítulo: ", primeiraMaiuscula: true)
            return "\(tituloTrabalho): \(subtituloTrabalho). \(anoApresentacao). \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
        }
        else{
            return "\(tituloTrabalho). \(anoApresentacao). p. \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
        }
    }

}
