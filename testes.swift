//
//  main.swift
//  CBLSWIFT
//
//  Created by Ana Caroline Sampaio Nogueira on 21/03/22.
//
import Foundation


    print("💵 Olá vamos te ajudar a cobrar corretamente pelos seus projetos de arquitetura\n")

    print("Para começar escolha uma das opções a seguir:\n")

    print(["arquitetonico","interiores","comercial"])

var escolhasDeProjetos = readLine()

var valorFinalAmbiente: Double = 0.0

switch escolhasDeProjetos {
case "arquitetonico":
    print(["sala","cozinha","suíte","suíte02","suíte03","lavabo","escritório","serviço","varanda","área externa\n"])
    print("Quais os ambientes que vão constar no projeto?\n")
    
    let escolhasDeAmbientes = readLine()!
    
    let ambientes = escolhasDeAmbientes.split(separator: " ")

    
    for ambiente in ambientes {
        if ambiente == "sala" {
            valorFinalAmbiente += 900
        } else if ambiente == "cozinha" {
            valorFinalAmbiente += 500
        } else if ambiente == "suíte" {
             valorFinalAmbiente += 600
        } else if ambiente == "suíte02" {
             valorFinalAmbiente += 600
        } else if ambiente == "suíte03" {
              valorFinalAmbiente += 600
        } else if ambiente == "lavabo" {
             valorFinalAmbiente += 200
        } else if ambiente == "escritório"{
             valorFinalAmbiente += 500
        } else if ambiente == "varanda" {
             valorFinalAmbiente += 500
        } else if ambiente == "serviço" {
             valorFinalAmbiente += 300
        } else if ambiente == "área externa" {
             valorFinalAmbiente += 300
        }
                    
    }
        
case "interiores" :
    print(["sala","cozinha","suíte","suíte02","suíte03","lavabo","escritório","serviço","varanda"])
    print("Quais os ambientes que vão constar no projeto?")
    
    let escolhasDeAmbientes = readLine()!
    
    let ambientes = escolhasDeAmbientes.split(separator: " ")
    
    for ambiente in ambientes {
        if ambiente == "sala" {
            valorFinalAmbiente += 800
        } else if ambiente == "cozinha" {
            valorFinalAmbiente += 400
        } else if ambiente == "suíte" {
             valorFinalAmbiente += 500
        } else if ambiente == "suíte02" {
             valorFinalAmbiente += 500
        } else if ambiente == "suíte03" {
              valorFinalAmbiente += 500
        } else if ambiente == "lavabo" {
             valorFinalAmbiente += 200
        } else if ambiente == "escritório"{
             valorFinalAmbiente += 400
        } else if ambiente == "varanda" {
             valorFinalAmbiente += 400
        } else if ambiente == "serviço" {
             valorFinalAmbiente += 200
        }
                    
    }
    
case "comercial" :
    print(["sala principal","sala02","sala03","copa","banheiro","banheiro02"])
    print("Quais os ambientes que vão constar no projeto?")
    let escolhasDeAmbientes = readLine()!
    
    
    let ambientes = escolhasDeAmbientes.split(separator: " ")
    
    for ambiente in ambientes {
        if ambiente == "sala principal" {
            valorFinalAmbiente += 500
        } else if ambiente == "sala02" {
            valorFinalAmbiente += 500
        } else if ambiente == "sala03" {
            valorFinalAmbiente += 500
        } else if ambiente == "copa" {
            valorFinalAmbiente += 200
        } else if ambiente == "banheiro" {
             valorFinalAmbiente += 200
        } else if ambiente == "banheiro02" {
            valorFinalAmbiente += 200
        }
    }
    
default:
    print("Você deve escolher um dos itens listados")
}

//Levantamento
    print ("Vai ter levantamento?")
let escolhaLevantamento: String? = readLine()
var precoDoLevantamento: Double = 0.0

    if escolhaLevantamento == "sim" {
        print( "Quantos km você vai percorrer para chegar no local do levantamento?")//,terminator: "" se quiser responder na msm linha
        
        var doubleDistancia: Double?
        let distancia = readLine()
        doubleDistancia = Double(distancia!)
        
        let PrecoDoLitroPorKm: Double = 1.85
        var precoDoLevantamento: Double = (doubleDistancia! * PrecoDoLitroPorKm + 200)
        
    } else {
        var precoDoLevantamento: Double = 0
    }
     

//Programas Arquitetura
    print("Quantas horas você vai gastar no Autocad?")

    var doubleHorasAutocad: Double?
    let horasAutocad = readLine()
    doubleHorasAutocad = Double(horasAutocad!)

let valorHoraAutocad: Double = 45

    var precoAutocad = doubleHorasAutocad! * valorHoraAutocad

    print("Quantas horas você vai gastar no Modelador 3D?")

    var doubleHorasModelador : Double?
    let horasModelador = readLine()
    doubleHorasModelador = Double(horasModelador!)

    let valorHoraModelador: Double = 45

    var precoModelador = doubleHorasModelador! * valorHoraModelador

    print("Quantas horas você vai gastar no Renderizador?")

    var doubleHorasRenderizador: Double?
    let horasRenderizador = readLine()
    doubleHorasRenderizador = Double(horasRenderizador!)

    let valorHoraRenderizador: Double = 45

    var precoRenderizador = doubleHorasRenderizador! * valorHoraRenderizador

//Marcenaria
    
    print("Vai ter marcenaria?")
    
    let vaiTerMarcenaria : String? = readLine()

    var precoMarcenaria : Double

    if vaiTerMarcenaria == "sim" {
        
        precoMarcenaria = 500
        
    } else {
        precoMarcenaria = 0    }
    
//Visita Técnica na obra
    print("Vai ter visita técnica na obra?")

    var precoVisitaTecnica : Double

    let vaiTerVisita: String? = readLine()

    if vaiTerVisita == "sim" {
    
    precoVisitaTecnica = 300
    }  else {
        precoVisitaTecnica = 0
}

//Função Final será valorFinalAmbiente + precoLevantamento + precoAutocad + precoModelador + precoRenderizador + precoMarcenaria + precoVisitaTecnica
func informacoesPrecoFinal(){
    let valorFinal = valorFinalAmbiente + precoDoLevantamento + precoAutocad + precoModelador + precoRenderizador + precoMarcenaria + precoVisitaTecnica
    print(valorFinal)
        
}

informacoesPrecoFinal()
