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
        let continuar = lerString(message: "Continuar? [Digite N para interromper]:  ", primeiraMaiuscula: true)
        if continuar.uppercased() == "N"{
            print("\nSaindo do guia.. Até logo!")
            break
        }
    }
    sleep(1)
    print("\nVoltando ao menu principal...\n\n")
    sleep(1)
}


func anoQuatroDigitos(ano:String) -> Bool{
    var count = 0
    for _ in ano{
        count += 1
    }
    if count == 4{
        return true
    }else{
        return false
}
}

func lerInt(message:String, ano: Bool) -> Int {
    
    var isValid = false
    var number = Int()
    repeat {
        print(message)
        
        let input:String? = readLine()
        
        if let possivelNumero = input, let thisNumber = Int(possivelNumero), thisNumber >= 0{
            number = thisNumber
            if ano == true{
                if anoQuatroDigitos(ano: possivelNumero){
                    isValid = true
                } else{
                    print("\nDigite um ano com quatro dígitos.\n")
                }
            } else{
                isValid = true
            }
        } else {
            print("\nEntrada inválida.\n")
        }
        
    } while !isValid
    
    return number
    
}

func lerString(message:String, primeiraMaiuscula:Bool) -> String {
    print(message)
    
    var text = String(readLine() ?? " ")
    if primeiraMaiuscula{
        text = text.capitalized
    }
    return text
}

func primeiraLetraMaiuscula(string:String) -> String {
        let first = String(string.prefix(1)).capitalized
        let other = String(string.dropFirst())
        return first + other
    }

func formatarReferencias(){
    continueLoop = true
    while(continueLoop){
        
        printMenu(menu: fontes)
        let option = lerInt(message: "\nPor favor, especifique a fonte a partir do número correspondente: ", ano: false)
    switch option {
        case 1:
            LivroViewModel().start()
            continueLoop = false
        
        case 2:
            RevistaOuPeriodicoViewModel().start()
            continueLoop = false
        
        case 3:
            ArtigoEmEventoViewModel().start()
            continueLoop = false
        case 4:
            WebsitesViewModel().start()
            continueLoop = false
        case 5:
            MonografiaDissertacaoTeseViewModel().start()
            continueLoop = false
        case 6:
            print("Voltando ao menu principal...")
            continueLoop = false

        default:
            print("Por favor, digite uma opção válida!")
            
        }
    }
}

func nomeESobrenome(cardinalidadeAutor: String) -> String {
    let nomeDoAutor = lerString(message: "Digite o primeiro nome do \(cardinalidadeAutor) autor: ", primeiraMaiuscula: true)
    let sobrenomeDoAutor = lerString(message: "Digite o último nome do \(cardinalidadeAutor) autor: ", primeiraMaiuscula: true)
    return "\(sobrenomeDoAutor.uppercased()), \(nomeDoAutor)"
}


func buscarEixosDePesquisa(){
    let menuPrincipalEixosDePesquisa = ["Áreas de pesquisa", "Palavras chave", "Sair"]
    print("Faltou inpiração? Tudo bem! A gente te ajuda! Aqui, você pode optar por: ")
    continueLoop = true
    while(continueLoop){
        printMenu(menu: menuPrincipalEixosDePesquisa)
        let opcaoUsuario = lerInt(message: "Por favor, digite uma opção: ", ano: false)
    
    switch opcaoUsuario{
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


