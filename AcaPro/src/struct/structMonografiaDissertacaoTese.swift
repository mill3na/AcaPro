//
//  struct_monografia_dissertacao_tese.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation


struct MonografiaDissertacaoTese {
    init() {
        print("\nMonografia, dissertação ou tese\n\n")
        print(monografiaDissertacaoTese())
    }
    
    func monografiaDissertacaoTese() -> String {
        let nomeSobrenomeAutor = nomeESobrenome()
        let informacoesComplementares = informacoesBasicasMonografiaDissertacaoTese()
        return "Referência formatada: \n\(nomeSobrenomeAutor). \(informacoesComplementares)"
}

}

func informacoesBasicasMonografiaDissertacaoTese() -> String {
    let tituloTrabalho = lerString(message: "Digite o título do trabalho: ", primeiraMaiuscula: true)
    let anoApresentacao = lerString(message: "Digite o ano de apresentação: ", primeiraMaiuscula: true)
    let numeroPaginas = lerInt(message: "Digite o total de páginas: ")
    let categoria = lerString(message: "Digite a categoria (área de concentração): ", primeiraMaiuscula: true)
    let instituição = lerString(message: "Digite a instituição: ", primeiraMaiuscula: true)
    let localPublicacao = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
    let anoDefesa = lerInt(message: "Digite o ano de defesa: ")

    let temSubtitulo = lerString(message: "Esse trabalho tem subtítulo [S/N]? ", primeiraMaiuscula: true)
    
    if temSubtitulo.uppercased() == "S"{
        let subtituloTrabalho = lerString(message: "Digite o subtítulo: ", primeiraMaiuscula: true)
        return "\(tituloTrabalho): \(subtituloTrabalho). \(anoApresentacao). \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
    }
    else{
        return "\(tituloTrabalho). \(anoApresentacao). p. \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
    }
}
