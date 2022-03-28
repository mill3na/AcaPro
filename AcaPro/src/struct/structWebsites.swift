//
//  struct_websites.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation

struct Websites {
    init() {
        var continua_loop = true
        print("\nWebsites\n\n")
        while continua_loop {
            
            let tipoSite = lerString(message: "Digite o tipo de site de acordo com o padrão a seguir: \n[J]: Referências de sites de jornal;\n[R]: Referências de site de revistas eletrônicas;\n[P]: Referências de sites de publicação periódica;\n[I]: Referências de página inicial de sites;\n[E]: Referências de endereços eletrônicos ou enciclopédias ", primeiraMaiuscula: true)
            
            if tipoSite.uppercased() == "J" {
                print("\n\nJornal")
                print(siteDeJornal())
                continua_loop = false
            }
            else if tipoSite.uppercased() == "R"{
                print("\n\nRevistas eletrônicas")
                print(siteDeRevistasEletronicas())
                continua_loop = false
            }
            else if tipoSite.uppercased() == "P" {
                print("\n\nPublicações periódicas")
                print(sitesDePublicacoesPeriodicas())
                continua_loop = false
            }
            else if tipoSite.uppercased() == "I" {
                print("\n\nPágina inicial de sites")
                print(pagina_inicial())
                continua_loop = false
            }
            else if tipoSite.uppercased() == "E" {
                print("\n\nEnciclopédias ou dicionários")
                print(dicionariosOuEnciclopedias())
                continua_loop = false
            }
            else {
                print("Opção inválida. Por favor, tente novamente. \n")
            }
        }
    }
    
    func diaMesAnoDeAcesso () -> String {
        let diaAcesso = lerInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mesAcesso = lerString(message: "Digite o mês de acesso: ", primeiraMaiuscula: false)
        let anoAcesso = lerInt(message: "Digite o ano de acesso: ")
       
        mesAcesso = formataMes(mes_usuario: mesAcesso)
        
        return "Acesso em: \(diaAcesso) \(mesAcesso). \(anoAcesso)."
    }
    
    func formataMes(mes_usuario: String) -> String {
        return String(mes_usuario.lowercased().prefix(3))
    }
    
    
    
    func siteDeJornal() -> String {
        let tituloMateria = lerString(message: "Digite o título da matéria: ", primeiraMaiuscula: true)
        let nomeJornal = lerString(message: "Digite o nome do jornal: ", primeiraMaiuscula: true)
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ", primeiraMaiuscula: false)
        let diaPublicacao = lerInt(message: "Digite o dia de publicação da matéria: ")
        var mesPublicacao = lerString(message: "Digite o mês de publicação da matéria: ", primeiraMaiuscula: false)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação da matéria: ")
        let diaMesAno = diaMesAnoDeAcesso()
        mesPublicacao = formataMes(mes_usuario: mesPublicacao)
        
        let autoriaConhecida = lerString(message: "Você tem acesso ao nome do autor da matéria [S/N]? ", primeiraMaiuscula: true)
        let cidade = lerString(message: "Você tem acesso à cidade de publicação [S/N]? ", primeiraMaiuscula: true)
        let secaoSite = lerString(message: "Sua pesquisa está em uma seção específica [S/N]? ", primeiraMaiuscula: true)
        
        if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "S") {
            let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ", primeiraMaiuscula: true)
            let secao = lerString(message: "Digite a seção: ", primeiraMaiuscula: true)
            
            return "Referência formatada: \n \(nomeAutor), \(nomeAutor). \(tituloMateria). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ", primeiraMaiuscula: true)
            
            return "Referência formatada: \n \(nomeAutor). \(tituloMateria). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
       else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "S") {
            let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
            let secao = lerString(message: "Digite a seção: ", primeiraMaiuscula: true)
            
            return "Referência formatada: \n \(nomeAutor). \(tituloMateria). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "N") {
            
            let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
            
            return "Referência formatada: \n \(nomeAutor). \(tituloMateria). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "S") {
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ", primeiraMaiuscula: true)
            let secao = lerString(message: "Digite a seção: ", primeiraMaiuscula: true)
            
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno))"
        }
        
        if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ", primeiraMaiuscula: true)
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidadePublicacao). \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let cidade_de_publicacao = lerString(message: "Digite a cidade de publicação: ", primeiraMaiuscula: true)
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidade_de_publicacao). \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "S") {
            let secao = lerString(message: "Digite a seção: ", primeiraMaiuscula: true)
            
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        else{
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
    }
    
    func siteDeRevistasEletronicas() -> String {
        let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
        let tituloArtigo = lerString(message: "Digite o título do artigo: ", primeiraMaiuscula: true)
        let tituloRevista = lerString(message: "Digite o título da revista: ", primeiraMaiuscula: true)
        let localPublicacao = lerString(message: "Digite o local de publicação: ", primeiraMaiuscula: true)
        let volumeExemplar = lerInt(message: "Digite o volume do exemplar: ")
        let numeroExemplar = lerInt(message: "Digite o número do exemplar: ")
        let paginasInicialFinal = lerString(message: "Digite as páginas inicial e final <x-y>: ", primeiraMaiuscula: false)
        let mesPublicacao = lerString(message: "Digite o mês de publicação: ", primeiraMaiuscula: false)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ", primeiraMaiuscula: false)
        let diaMesAno = diaMesAnoDeAcesso()
                
        return "Referência formatada: \n \(nomeAutor). \(tituloArtigo). \(tituloRevista), \(localPublicacao), v. \(volumeExemplar), n. \(numeroExemplar), p. \(paginasInicialFinal), \(mesPublicacao), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        
    }
    
    func sitesDePublicacoesPeriodicas() -> String{
        let tituloMateria = lerString(message: "Digite o título da matéria: ", primeiraMaiuscula: true)
        let nomeSite = lerString(message: "Digite o nome do site: ", primeiraMaiuscula: true)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ", primeiraMaiuscula: false)
        let diaMesAno = diaMesAnoDeAcesso()
        
        let tem_autor = lerString(message: "Você tem acesso ao nome do autor [S/N]? ", primeiraMaiuscula: true)
        if tem_autor.uppercased() == "S"{
            let nomeAutor = nomeESobrenome(cardinalidadeAutor: "primeiro")
            return "Referência formatada: \n\(nomeAutor). \(tituloMateria). \(nomeSite), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        else{
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeSite), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
    }
    
    func pagina_inicial() -> String {
        let autorOrganizacao = lerString(message: "Digite o nome do autor ou organização: ", primeiraMaiuscula: true)
        let nomeSite = lerString(message: "Digite o nome do site: ", primeiraMaiuscula: true)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let ementa = lerString(message: "Digite a descrição da pesquisa: ", primeiraMaiuscula: true)
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ", primeiraMaiuscula: false)
        let diaMesAno = diaMesAnoDeAcesso()
        
        return "Referência formatada: \(autorOrganizacao.uppercased()), \(nomeSite), \(anoPublicacao). \(ementa). Disponível em: \(url). \(diaMesAno)"
    }
    
    func dicionariosOuEnciclopedias() -> String {
        let tituloVerbeteConceito = lerString(message: "Digite o título do verbete/conceito: ", primeiraMaiuscula: true)
        let nome_da_enciclopedia_dicionario = lerString(message: "Digite o nome da enciclopédia/dicionário: ", primeiraMaiuscula: true)
        let autorEditora = lerString(message: "Digite o responsável pela publicação ou a editora: ", primeiraMaiuscula: true)
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ", primeiraMaiuscula: false)
        let diaMesAno = diaMesAnoDeAcesso()
                
        return "\n\(tituloVerbeteConceito.uppercased()). In: \(nome_da_enciclopedia_dicionario). \(autorEditora), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)."
    }

        
}
