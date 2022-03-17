//
//  struct_websites.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation

struct Websites {
    init() {
        print("\nWebsites\n\n")
        let tipoSite = lerString(message: "Digite o tipo de site de acordo com o padrão a seguir: \n[J]: Referências de sites de jornal;\n[R]: Referências de site de revistas eletrônicas;\n[P]: Referências de sites de publicação periódica;\n[I]: Referências de página inicial de sites;\n[E]: Referências de endereços eletrônicos ou enciclopédias ")
        
        if tipoSite.uppercased() == "J" {
            print("\n\nJornal")
            print(siteDeJornal())
        }
        else if tipoSite.uppercased() == "R"{
            print("\n\nRevistas eletrônicas")
            print(siteDeRevistasEletronicas())
        }
        else if tipoSite.uppercased() == "P" {
            print("\n\nPublicações periódicas")
            print(sitesDePublicacoesPeriodicas())
        }
        else if tipoSite.uppercased() == "I" {
            print("\n\nPágina inicial de sites")
            print(pagina_inicial())
        }
        else if tipoSite.uppercased() == "E" {
            print("\n\nEnciclopédias ou dicionários")
            print(dicionariosOuEnciclopedias())
        }
        else {
            print("Opção inválida. ")
        }
    }
    
    func diaMesAnoDeAcesso () -> String {
        let diaAcesso = lerInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mesAcesso = lerString(message: "Digite o mês de acesso: ")
        let anoAcesso = lerString(message: "Digite o ano de acesso: ")
       
        mesAcesso = formataMes(mes_usuario: mesAcesso)
        
        return "Acesso em: \(diaAcesso) \(mesAcesso). \(anoAcesso)."
    }
    
    func formataMes(mes_usuario: String) -> String {
        return String(mes_usuario.lowercased().prefix(3))
    }
    
    
    
    func siteDeJornal() -> String {
        let tituloMateria = lerString(message: "Digite o título da matéria: ")
        let nomeJornal = lerString(message: "Digite o nome do jornal: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ")
        let diaPublicacao = lerInt(message: "Digite o dia de publicação da matéria: ")
        var mesPublicacao = lerString(message: "Digite o mês de publicação da matéria: ")
        let anoPublicacao = lerString(message: "Digite o ano de publicação da matéria: ")
        let diaMesAno = diaMesAnoDeAcesso()
        mesPublicacao = formataMes(mes_usuario: mesPublicacao)
        
        let autoriaConhecida = lerString(message: "Você tem acesso ao nome do autor da matéria [S/N]? ")
        let cidade = lerString(message: "Você tem acesso à cidade de publicação [S/N]? ")
        let secaoSite = lerString(message: "Sua pesquisa está em uma seção específica [S/N]? ")
        
        if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "S") {
            let nomeAutor = lerString(message: "Digite o nome do autor: ")
            let sobrenomeAutor = lerString(message: "Digite o sobrenome do autor: ")
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ")
            let secao = lerString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(sobrenomeAutor.uppercased()), \(nomeAutor). \(tituloMateria). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let nomeAutor = lerString(message: "Digite o nome do autor: ")
            let sobrenomeAutor = lerString(message: "Digite o sobrenome do autor: ")
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ")
            
            return "Referência formatada: \n \(sobrenomeAutor.uppercased()), \(nomeAutor). \(tituloMateria). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
       else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "S") {
            let nomeAutor = lerString(message: "Digite o nome do autor: ")
            let sobrenomeAutor = lerString(message: "Digite o sobrenome do autor: ")
            let secao = lerString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(sobrenomeAutor.uppercased()), \(nomeAutor). \(tituloMateria). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "N") {
            let nomeAutor = lerString(message: "Digite o nome do autor: ")
            let sobrenomeAutor = lerString(message: "Digite o sobrenome do autor: ")
            
            return "Referência formatada: \n \(sobrenomeAutor.uppercased()), \(nomeAutor). \(tituloMateria). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "S") {
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ")
            let secao = lerString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidadePublicacao), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno))"
        }
        
        if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let cidadePublicacao = lerString(message: "Digite a cidade de publicação: ")
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidadePublicacao). \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secaoSite.uppercased() == "N") {
            let cidade_de_publicacao = lerString(message: "Digite a cidade de publicação: ")
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(cidade_de_publicacao). \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
        else if (autoriaConhecida.uppercased() == "N") && (cidade.uppercased() == "N") && (secaoSite.uppercased() == "S") {
            let secao = lerString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Seção \(secao). Disponível em: \(url). \(diaMesAno)"
        }
        else{
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeJornal), \(diaPublicacao) \(mesPublicacao). \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        
    }
    
    func siteDeRevistasEletronicas() -> String {
        let nomeAutor = lerString(message: "Digite o nome do autor: ")
        let sobrenomeAutor = lerString(message: "Digite o sobrenome do autor: ")
        let tituloArtigo = lerString(message: "Digite o título do artigo: ")
        let tituloRevista = lerString(message: "Digite o título da revista: ")
        let localPublicacao = lerString(message: "Digite o local de publicação: ")
        let volumeExemplar = lerInt(message: "Digite o volume do exemplar: ")
        let numeroExemplar = lerInt(message: "Digite o número do exemplar: ")
        let paginasInicialFinal = lerString(message: "Digite as páginas inicial e final <x-y>: ")
        let mesPublicacao = lerString(message: "Digite o mês de publicação: ")
        let anoPublicacao = lerString(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ")
        let diaMesAno = diaMesAnoDeAcesso()
                
        return "Referência formatada: \n \(sobrenomeAutor.uppercased()), \(nomeAutor). \(tituloArtigo). \(tituloRevista), \(localPublicacao), v. \(volumeExemplar), n. \(numeroExemplar), p. \(paginasInicialFinal), \(mesPublicacao), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        
    }
    
    func sitesDePublicacoesPeriodicas() -> String{
        let tituloMateria = lerString(message: "Digite o título da matéria: ")
        let nomeSite = lerString(message: "Digite o nome do site: ")
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ")
        let diaMesAno = diaMesAnoDeAcesso()
        
        let tem_autor = lerString(message: "Você tem acesso ao nome do autor [S/N]? ")
        if tem_autor.uppercased() == "S"{
            let nome_do_autor = lerString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = lerString(message: "Digite o sobrenome do autor: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor.uppercased()). \(tituloMateria). \(nomeSite), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
        else{
            return "Referência formatada: \n \(tituloMateria.uppercased()). \(nomeSite), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)"
        }
    }
    
    func pagina_inicial() -> String {
        let autorOrganizacao = lerString(message: "Digite o nome do autor ou organização: ")
        let nomeSite = lerString(message: "Digite o nome do site: ")
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let ementa = lerString(message: "Digite a descrição da pesquisa: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ")
        let diaMesAno = diaMesAnoDeAcesso()
        
        return "Referência formatada: \(autorOrganizacao.uppercased()), \(nomeSite), \(anoPublicacao). \(ementa). Disponível em: \(url). \(diaMesAno)"
    }
    
    func dicionariosOuEnciclopedias() -> String {
        let tituloVerbeteConceito = lerString(message: "Digite o título do verbete/conceito: ")
        let nome_da_enciclopedia_dicionario = lerString(message: "Digite o nome da enciclopédia/dicionário: ")
        let autorEditora = lerString(message: "Digite o responsável pela publicação ou a editora: ")
        let anoPublicacao = lerInt(message: "Digite o ano de publicação: ")
        let url = lerString(message: "Cole aqui a url (link) da pesquisa: ")
        let diaMesAno = diaMesAnoDeAcesso()
                
        return "Referência formatada: \n \(tituloVerbeteConceito.uppercased()). In: \(nome_da_enciclopedia_dicionario). \(autorEditora), \(anoPublicacao). Disponível em: \(url). \(diaMesAno)."
    }

        
}
