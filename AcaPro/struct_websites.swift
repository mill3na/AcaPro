//
//  struct_websites.swift
//  AcaPro
//
//  Created by Milena Maia Araújo on 14/03/22.
//

import Foundation

struct Websites {
    init() {
        let tipo_de_site = readString(message: "Digite o tipo de site de acordo com o padrão a seguir: \n[J]: Referências de sites de jornal;\n[R]: Referências de site de revistas eletrônicas;\n[P]: Referências de sites de publicação periódica;\n[I]: Referências de página inicial de sites;\n[E]: Referências de endereços eletrônicos ou enciclopédias ")
        
        if tipo_de_site.uppercased() == "J" {
            print("\n\nJornal")
            print(site_de_jornal())
        }
        else if tipo_de_site.uppercased() == "R"{
            print("\n\nRevistas eletrônicas")
            print(site_de_revistas_eletronicas())
        }
        else if tipo_de_site.uppercased() == "P" {
            print("\n\nPublicações periódicas")
            print(sites_de_publicacoes_periodicas())
        }
        else if tipo_de_site.uppercased() == "I" {
            print("\n\nPágina inicial de sites")
            print(pagina_inicial())
        }
        else if tipo_de_site.uppercased() == "E" {
            print("\n\nEnciclopédias ou dicionários")
            print(dicionarios_ou_enciclopedias())
        }
        else {
            print("Opção inválida. ")
        }
    }
    
    func formata_mes(mes_usuario: String) -> String {
        return String(mes_usuario.lowercased().prefix(3))
    }
    
    
    func site_de_jornal() -> String {
        let titulo_da_materia = readString(message: "Digite o título da matéria: ")
        let nome_do_jornal = readString(message: "Digite o nome do jornal: ")
        let url = readString(message: "Cole aqui a url (link) da pesquisa: ")
        let dia_de_publicacao = readInt(message: "Digite o dia de publicação da matéria: ")
        var mes_de_publicacao = readString(message: "Digite o mês de publicação da matéria: ")
        let ano_de_publicacao = readString(message: "Digite o ano de publicação da matéria: ")
        let dia_de_acesso = readInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mes_de_acesso = readString(message: "Digite o mês de acesso: ")
        let ano_de_acesso = readString(message: "Digite o ano de acesso: ")
       
        mes_de_acesso = formata_mes(mes_usuario: mes_de_acesso)
        mes_de_publicacao = formata_mes(mes_usuario: mes_de_publicacao)
        
        let autoria_conhecida = readString(message: "Você tem acesso ao nome do autor da matéria [S/N]? ")
        let cidade = readString(message: "Você tem acesso à cidade de publicação [S/N]? ")
        let secao_do_site = readString(message: "Sua pesquisa está em uma seção específica [S/N]? ")
        
        if (autoria_conhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secao_do_site.uppercased() == "S") {
            let nome_do_autor = readString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
            let cidade_de_publicacao = readString(message: "Digite a cidade de publicação: ")
            let secao = readString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_materia). \(nome_do_jornal), \(cidade_de_publicacao), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Seção \(secao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        else if (autoria_conhecida.uppercased() == "S") && (cidade.uppercased() == "S") && (secao_do_site.uppercased() == "N") {
            let nome_do_autor = readString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
            let cidade_de_publicacao = readString(message: "Digite a cidade de publicação: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_materia). \(nome_do_jornal), \(cidade_de_publicacao), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
       else if (autoria_conhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secao_do_site.uppercased() == "S") {
            let nome_do_autor = readString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
            let secao = readString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_materia). \(nome_do_jornal), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Seção \(secao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        else if (autoria_conhecida.uppercased() == "S") && (cidade.uppercased() == "N") && (secao_do_site.uppercased() == "N") {
            let nome_do_autor = readString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_da_materia). \(nome_do_jornal), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        else if (autoria_conhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secao_do_site.uppercased() == "S") {
            let cidade_de_publicacao = readString(message: "Digite a cidade de publicação: ")
            let secao = readString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_jornal), \(cidade_de_publicacao), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Seção \(secao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        if (autoria_conhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secao_do_site.uppercased() == "N") {
            let cidade_de_publicacao = readString(message: "Digite a cidade de publicação: ")
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_jornal), \(cidade_de_publicacao). \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        else if (autoria_conhecida.uppercased() == "N") && (cidade.uppercased() == "S") && (secao_do_site.uppercased() == "N") {
            let cidade_de_publicacao = readString(message: "Digite a cidade de publicação: ")
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_jornal), \(cidade_de_publicacao). \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
        else if (autoria_conhecida.uppercased() == "N") && (cidade.uppercased() == "N") && (secao_do_site.uppercased() == "S") {
            let secao = readString(message: "Digite a seção: ")
            
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_jornal), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Seção \(secao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        else{
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_jornal), \(dia_de_publicacao) \(mes_de_publicacao). \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)"
        }
        
    }
    
    func site_de_revistas_eletronicas() -> String {
        let nome_do_autor = readString(message: "Digite o nome do autor: ")
        let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
        let titulo_do_artigo = readString(message: "Digite o título do artigo: ")
        let titulo_da_revista = readString(message: "Digite o título da revista: ")
        let local_de_publicacao = readString(message: "Digite o local de publicação: ")
        let volume_do_exemplar = readInt(message: "Digite o volume do exemplar: ")
        let numero_do_exemplar = readInt(message: "Digite o número do exemplar: ")
        let paginas_inicial_e_final = readString(message: "Digite as páginas inicial e final <x-y>: ")
        let mes_de_publicacao = readString(message: "Digite o mês de publicação: ")
        let ano_de_publicacao = readString(message: "Digite o ano de publicação: ")
        let url = readString(message: "Cole aqui a url (link) da pesquisa: ")
        let dia_de_acesso = readInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mes_de_acesso = readString(message: "Digite o mês de acesso: ")
        let ano_de_acesso = readInt(message: "Digite o ano de acesso: ")
        
        mes_de_acesso = formata_mes(mes_usuario: mes_de_acesso)
        
        return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor). \(titulo_do_artigo). \(titulo_da_revista), \(local_de_publicacao), v. \(volume_do_exemplar), n. \(numero_do_exemplar), p. \(paginas_inicial_e_final), \(mes_de_publicacao), \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)."
        
    }
    
    func sites_de_publicacoes_periodicas() -> String{
        let titulo_da_materia = readString(message: "Digite o título da matéria: ")
        let nome_do_site = readString(message: "Digite o nome do site: ")
        let ano_de_publicacao = readInt(message: "Digite o ano de publicação: ")
        let url = readString(message: "Cole aqui a url (link) da pesquisa: ")
        let dia_de_acesso = readInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mes_de_acesso = readString(message: "Digite o mês de acesso: ")
        let ano_de_acesso = readInt(message: "Digite o ano de acesso: ")
        
        mes_de_acesso = formata_mes(mes_usuario: mes_de_acesso)
        
        let tem_autor = readString(message: "Você tem acesso ao nome do autor [S/N]? ")
        if tem_autor.uppercased() == "S"{
            let nome_do_autor = readString(message: "Digite o nome do autor: ")
            let sobrenome_do_autor = readString(message: "Digite o sobrenome do autor: ")
            
            return "Referência formatada: \n \(sobrenome_do_autor.uppercased()), \(nome_do_autor.uppercased()). \(titulo_da_materia). \(nome_do_site), \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso), \(mes_de_acesso), \(ano_de_acesso)."
        }
        else{
            return "Referência formatada: \n \(titulo_da_materia.uppercased()). \(nome_do_site), \(ano_de_publicacao). Disponível em: \(url). Acesso em: \(dia_de_acesso), \(mes_de_acesso), \(ano_de_acesso)."
        }
    }
    
    func pagina_inicial() -> String {
        let autor_organizacao = readString(message: "Digite o nome do autor ou organização: ")
        let nome_do_site = readString(message: "Digite o nome do site: ")
        let ano_de_publicacao = readInt(message: "Digite o ano de publicação: ")
        let ementa = readString(message: "Digite a descrição da pesquisa: ")
        let url = readString(message: "Cole aqui a url (link) da pesquisa: ")
        let dia_de_acesso = readInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mes_de_acesso = readString(message: "Digite o mês de acesso: ")
        let ano_de_acesso = readInt(message: "Digite o ano de acesso: ")
        
        mes_de_acesso = formata_mes(mes_usuario: mes_de_acesso)
        
        return "Referência formatada: \(autor_organizacao.uppercased()), \(nome_do_site), \(ano_de_publicacao). \(ementa). Disponível em: \(url). Acesso em: \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)."
    }
    
    func dicionarios_ou_enciclopedias() -> String {
        let titulo_do_verbete_conceito = readString(message: "Digite o título do verbete/conceito: ")
        let nome_da_enciclopedia_dicionario = readString(message: "Digite o nome da enciclopédia/dicionário: ")
        let autor_editora = readString(message: "Digite o responsável pela publicação ou a editora: ")
        let ano_de_publicacao = readInt(message: "Digite o ano de publicação: ")
        let url = readString(message: "Cole aqui a url (link) da pesquisa: ")
        let dia_de_acesso = readInt(message: "Digite o dia de acesso com dois algarismos: ")
        var mes_de_acesso = readString(message: "Digite o mês de acesso: ")
        let ano_de_acesso = readInt(message: "Digite o ano de acesso: ")
        
        
        mes_de_acesso = formata_mes(mes_usuario: mes_de_acesso)
        
        return "Referência formatada: \n \(titulo_do_verbete_conceito.uppercased()). In: \(nome_da_enciclopedia_dicionario). \(autor_editora), \(ano_de_publicacao). Disponível em: \(url). Acesso em \(dia_de_acesso) \(mes_de_acesso). \(ano_de_acesso)."
    }

        
}
