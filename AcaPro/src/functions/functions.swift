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

func printStepByStep(multilineString: [String]){
    for opcao in multilineString{
        print(opcao)
        sleep(1)
        let continuar = lerString(message: "Continuar [S/N]? ", true)
        if continuar.uppercased() == "N"{
            print("\nSaindo do guia.. Até logo!")
            break
        }
    }
}

func lerInt(message:String) -> Int {
    print(message)
    let number = Int(readLine() ?? "0")!
    return number
}

func lerString(message:String, primeiraMaiuscula:Bool) -> String {
    print(message)
    var text = String(readLine() ?? " ")
    if primeiraMaiuscula{
        text = capitalizingFirstLetter(string: text)
    }
    return text
}

func capitalizingFirstLetter(string:String) -> String {
        let first = String(string.prefix(1)).capitalized
        let other = String(string.dropFirst())
        return first + other
    }
func formatarReferencias(){
    
    continueLoop = true
    while(continueLoop){
        
        printMenu(menu: fontes)
        let option = lerInt(message: "\nDigite 0 para voltar ao menu anterior. \nPor favor, especifique a fonte: ")
    switch option{
        case 0:
            print("Voltando ao menu principal...")
            break
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
    let nomeDoAutor = lerString(message: "Digite o nome do autor: ", true)
    let sobrenomeDoAutor = lerString(message: "Digite o sobrenome do autor: ", true)
    return "\(sobrenomeDoAutor.uppercased()), \(nomeDoAutor)"
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

