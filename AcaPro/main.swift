//
//  main.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 09/03/22.
//

import Foundation


var primeiroMenu = ["Guia do usuário", "Formatar referências", "Buscar eixos de pesquisa", "Tipos de referência", "Processo de desenvolvimento", "Sair"]
var fontes = ["Livro", "Revista ou artigo de periódico", "Artigo em evento", "Websites", "Monografia, dissertação ou tese"]

print("Olá, User! Pronto para começar?\n\n")

var continueLoop = true

while(continueLoop){
    printMenu(menu: primeiroMenu)
    let opcaoUsuario = lerInt(message: "Por favor, escolha uma das opções.  ")

    switch opcaoUsuario{
        case 1:
            print("Guia do usuário\n")
            print(areasDePesquisa)
            continueLoop = false
        case 2:
            print("Formatar referências\n")
            print(formatarReferencias())
            continueLoop = false

        case 3:
            print("Buscar eixos de pesquisa\n")
            print(areasDePesquisa)
            continueLoop = false
        case 4:
            print("Tipos de referência\n")
            print(tiposDeReferencia)
            continueLoop = false
        case 5:
            print("Processo de desenvolvimento\n")
            continueLoop = false
        case 6:
            print("Sair\nAté logo!\n")
            continueLoop = false
        default: print("Por favor, tente novamente!")
            
        }
        

}
