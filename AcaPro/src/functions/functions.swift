//
//  functions.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 09/03/22.
//

import Foundation
func printMenu(menu: [String]){
    for (contador, opcao) in menu.enumerated(){
        print("[\(contador + 1)]: \(opcao)")
    }
}

func lerInt(message:String) -> Int {
    print(message)
    let number = Int(readLine() ?? "0")!
    print("Sua escolha: \(number)\n\n")
    return number
}

func lerString(message:String) -> String {
    print(message)
    let text = String(readLine() ?? " ")
    print("Sua escolha: \(text).\n\n")
    return text
}

func formatarReferencias(){
    
    continueLoop = true
    while(continueLoop){
        
        printMenu(menu: fontes)
        let option = lerInt(message: "Por favor, especifique a fonte: ")
    switch option{
        case 1:
            let referenciaLivro = Livro()
            print(referenciaLivro)
            continueLoop = false
        
        case 2:
            let referenciaRevistaOuPeriodico = RevistaOuPeriodico()
            print(referenciaRevistaOuPeriodico)
            continueLoop = false
        
        case 3:
            let referenciaArtigoEmEvento = ArtigoEmEvento()
            print(referenciaArtigoEmEvento)
            continueLoop = false
        case 4:
            let referenciaWebsites = Websites()
            print(referenciaWebsites)
            continueLoop = false
        case 5:
            
            let referenciaMonografiaDissertacaoTese = MonografiaDissertacaoTese()
            print(referenciaMonografiaDissertacaoTese)
            continueLoop = false

        default:
            print("Por favor, digite uma opção válida!")
            
        }
    }
}

func nomeESobrenome() -> String {
    let nomeDoAutor = lerString(message: "Digite o nome do autor: ")
    let sobrenomeDoAutor = lerString(message: "Digite o sobrenome do autor: ")
    return "\(sobrenomeDoAutor.uppercased()), \(nomeDoAutor)"
}

func informacoesBasicasLivro() -> String {
    let tituloDaObra = lerString(message: "Digite o título do livro: ")
    let localPublicação = lerString(message: "Digite o local de publicação: ")
    let editora = lerString(message: "Digite a editora: ")
    let anoPublicação = lerString(message: "Digite o ano de publicação: ")
    let temSubtitulo = lerString(message: "Esse livro tem subtítulo [S/N]? ")
    let temEdicao = lerString(message: "Essa obra tem edição [S/N]? ")
    
    if (temSubtitulo.uppercased() == "S") && (temEdicao.uppercased() == "S") {
        let subtituloObra = lerString(message: "Digite o subtitulo da obra: ")
        let edicaoObra = lerString(message: "Digite a edição (somente o número): ")
        return "\(tituloDaObra): \(subtituloObra). \(edicaoObra). ed. \(localPublicação): \(editora), \(anoPublicação)."
    }
    
    else if (temSubtitulo.uppercased() == "S") && (temEdicao.uppercased() == "N") {
        let subtituloObra = lerString(message: "Digite o subtitulo da obra: ")
        return "\(tituloDaObra): \(subtituloObra). \(localPublicação): \(editora), \(anoPublicação)."
    }
    
    else if (temSubtitulo.uppercased() == "N") && (temEdicao.uppercased() == "S"){
        let edicaoObra = lerString(message: "Digite a edição (somente o número): ")
        return "\(tituloDaObra). \(edicaoObra). ed. \(localPublicação): \(editora), \(anoPublicação)."
    }
    
    else {
        return "\(tituloDaObra). \(localPublicação): \(editora), \(anoPublicação)."
    }
    
}

func buscarEixosDePesquisa(){
    let menuPrincipalEixosDePesquisa = ["Áreas de pesquisa", "Palavras chave", "Sair"]
    print("Faltou inpiração? Tudo bem! A gente te ajuda! Aqui, você pode optar por: ")
    continueLoop = true
    while(continueLoop){
        printMenu(menu: menuPrincipalEixosDePesquisa)
        let opcapUsuario = lerInt(message: "Por favor, digite uma opção: ")
    
    switch opcapUsuario{
        case 1:
            print(areasDePesquisa)
            continueLoop = false
        
        case 2:
            print(palavrasChave)
            continueLoop = false
        
        case 3:
            print("Sair\nAté logo!\n")
            continueLoop = false

        default:
            print("Por favor, digite uma opção válida!")
            
        }
}
}

