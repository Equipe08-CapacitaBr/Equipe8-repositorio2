//
//  Planta Modelo.swift
//  Plantinhas
//
//  Created by iredefbmac_35 on 03/06/25.
//

import Foundation

struct Planta: Identifiable {
    var id: UUID
    var nome: String
    var estaRegado: Bool
}

var plantaTeste: Planta = Planta(id: UUID(), nome: "Cacto", estaRegado: false)
