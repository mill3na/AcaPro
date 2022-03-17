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
    let tituloTrabalho = lerString(message: "Digite o título do trabalho: ")
    let anoApresentacao = lerString(message: "Digite o ano de apresentação: ")
    let numeroPaginas = lerInt(message: "Digite o total de páginas: ")
    let categoria = lerString(message: "Digite a categoria (área de concentração): ")
    let instituição = lerString(message: "Digite a instituição: ")
    let localPublicacao = lerString(message: "Digite o local de publicação: ")
    let anoDefesa = lerInt(message: "Digite o ano de defesa: ")

    let temSubtitulo = lerString(message: "Esse trabalho tem subtítulo [S/N]? ")
    
    if temSubtitulo.uppercased() == "S"{
        let subtituloTrabalho = lerString(message: "Digite o subtítulo: ")
        return "\(tituloTrabalho): \(subtituloTrabalho). \(anoApresentacao). \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
    }
    else{
        return "\(tituloTrabalho). \(anoApresentacao). p. \(numeroPaginas). \(categoria) - \(instituição), \(localPublicacao), \(anoDefesa)."
    }
}
