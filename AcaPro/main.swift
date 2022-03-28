//
//  main.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 09/03/22.
//

import Foundation




print("Olá, User! Pronto para começar?\n\n")

var continueLoop = true

while(continueLoop){
    printMenu(menu: primeiroMenu)
    let opcaoUsuario = lerInt(message: "Por favor, escolha uma das opções.  ")

    switch opcaoUsuario{
        case 1:
            print("Guia do usuário\n")
            printStepByStep(multilineString: guiaDoUsuario)
        case 2:
            print("Formatar referências\n")
            print("\n\n")
            print(formatarReferencias())
        case 3:
            print("Buscar eixos de pesquisa\n")
            print("\n\n")
            print(areasDePesquisa)
            sleep(1)
            print("\nVoltando ao menu principal...\n\n")
            sleep(1)
        
        case 4:
            print("Tipos de referência\n")
            print("\n\n")
            printStepByStep(multilineString: referencia)
        case 5:
            print("Processo de desenvolvimento\n")
            print("\n\n")
            printStepByStep(multilineString: desenvolvimento)
        case 6:
            print("Sair\nAté logo!\n")
            continueLoop = false
        default: print("Por favor, tente novamente!")
            
        }
        

}
