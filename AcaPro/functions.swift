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
            let referencia_livro = Livro()
            print(referencia_livro)
            continue_loop = false
        
        case 2:
            print("Revista ou artigo de periódico\n")
            let referencia_revista_ou_periodico = RevistaOuPeriodico()
            print(referencia_revista_ou_periodico)
            continue_loop = false
        
        case 3:
            print("Artigo em evento\n")
            let referencia_artigo_em_evento = ArtigoEmEvento()
            print(referencia_artigo_em_evento)
            continue_loop = false
        case 4:
            print("Websites")
            let referencia_websites = Websites()
            print(referencia_websites)
            continue_loop = false
        case 5:
            print("Monografia, dissertação ou tese\n")
            let referencia_monografia_dissertacao_tese = MonografiaDissertacaoTese()
            print(referencia_monografia_dissertacao_tese)
            continue_loop = false

        default:
            print("Por favor, digite uma opção válida!")
            
        }
    }
    return "\(option)"
    
}

