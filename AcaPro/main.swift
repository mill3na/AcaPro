//
//  main.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 09/03/22.
//

import Foundation

var primeiro_menu = ["Guia do usuário", "Formatar referências", "Buscar eixos de pesquisa", "Tipos de referência", "Processo de desenvolvimento", "Sair"]
var materiais = ["Livro", "Revista", "Artigos ou periódicos", "Websites"]

print("Olá, User! Pronto para começar?\n\n")

print_menu(menu: primeiro_menu)

var continue_loop = true

while(continue_loop){
    let user_option = readInt(message: "Por favor, escolha uma das opções a seguir:  ")
    switch user_option{
        case 1:
            print("Guia do usuário\n")
            print(formatar_referencias())
            continue_loop = false
        case 2:
            print("Formatar referências\n")
            continue_loop = false

        case 3:
            print("Buscar eixos de pesquisa\n")
            continue_loop = false
        case 4:
            print("Tipos de referência\n")
            continue_loop = false
        case 5:
            print("Processo de desenvolvimento\n")
            continue_loop = false
        case 6:
            print("Sair\nAté logo!\n")
            continue_loop = false
        default: print("Por favor, tente novamente!")
            
        }
        

}
