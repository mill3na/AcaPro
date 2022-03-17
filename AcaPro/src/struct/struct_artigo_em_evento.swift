//
//  struct_artigo_em_revista.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation


struct ArtigoEmEvento {
    init() {
        print("\nArtigo em evento\n\n")
        print(referenciaArtigoEmEvento())
    }
    
    func referenciaArtigoEmEvento() -> String {
        let nomeSobrenomeAutor = nomeESobrenome()
        let informacoesBasicas = informacoesBasicasArtigoEmEvento()
        
        return "Referência formatada: \n \(nomeSobrenomeAutor). \(informacoesBasicas)"

}

}
func informacoesBasicasArtigoEmEvento() -> String {
    let tituloTrabalhoApresentado = lerString(message: "Digite o título do trabalho apresentado: ")
    let tituloEvento = lerString(message: "Digite o título do evento: ")
    let numeroEvento = lerString(message: "Digite o número do evento: ")
    let anoRealizacao = lerString(message: "Digite o ano de realização: ")
    let cidadeRealizacao = lerString(message: "Digite a cidade de realização: ")
    let tituloDocumento = lerString(message: "Digite o título do documento (anais, resumos etc): ")
    let localPublicacao = lerString(message: "Digite o local de publicação: ")
    let editora = lerString(message: "Digite a editora: ")
    let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
    let paginasinicialFinal = lerString(message: "Digite as páginas inicial e final <x - y>: ")
    
    return "\(tituloTrabalhoApresentado). In: \(tituloEvento.uppercased()), nº \(numeroEvento), \(anoRealizacao), \(cidadeRealizacao). \(tituloDocumento). \(localPublicacao): \(editora), \(anoPublicacao). p. \(paginasinicialFinal)"

}
