//
//  Lista Plantas ViewModel.swift
//  Plantinhas
//
//  Created by iredefbmac_35 on 03/06/25.
//
import SwiftUI

struct CadastrousuarioView: View{
    var body: some View{
        Cadastro_usuarioView()
    }
}
#Preview {
    ContentView()
}

import Foundation
import Combine

class ListaPlantasViewModel:ObservableObject {
    @Published var listaPlantas: [Planta] = []
    
    func adicionarPlanta(nome: String, estaRegado:Bool)  {
        let novaPlanta = Planta(id: UUID(), nome: nome, estaRegado: estaRegado)
        listaPlantas.append(novaPlanta)
    }
}

//var classe = ListaPlantasViewModel()
//classe.adicionarPlanta(nome: "Cacto", estaRegado: true)
