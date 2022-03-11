//
//  functions.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 09/03/22.
//

import Foundation
func print_menu(menu: [String]){
    for (index, option) in menu.enumerated(){
        print("[\(index + 1)]: \(option)")
    }
}

func readInt(message:String) -> Int {
    print(message)
    let number = Int(readLine() ?? "0")!
    print("Sua escolha: \(number)\n\n")
    return number
}

func readString(message:String) -> String {
    print(message)
    let text = String(readLine() ?? " ")
    print("Sua escolha: \(text).\n\n")
    return text
}

func formatar_referencias() -> String{
    print_menu(menu: materiais)
    let option = readInt(message: "Por favor, especifique a fonte: ")
    continue_loop = true
    while(continue_loop){
    switch option{
        case 1:
            print("Livro.\n")
            formatar_referencia_livro()
            continue_loop = false
        
        case 2:
            print("Revista ou periódico\n")
            let referencia_livro_ou_periodico = RevistaOuPeriodico()
            print(referencia_livro_ou_periodico)
            continue_loop = false
        
        case 3:
            print("Artigos\n")
            continue_loop = false
        case 4:
            print("Websites")
            continue_loop = false

        default:
            print("Por favor, digite uma opção válida!")
            
        }
    }
    return "\(option)"
    
}

func formatar_referencia_livro(){
    _ = Livro()
}
