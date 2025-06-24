//
//  ListaPlantas.swift
//  Plantinhas
//
//  Created by iredefbmac_35 on 03/06/25.
//

import SwiftUI

struct ListaPlantas: View {
    @ObservedObject var viewModel = ListaPlantasViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.listaPlantas) { planta in
                HStack(content: {
                    Text(planta.nome)
                        .foregroundStyle(planta.estaRegado ? .blue : .black)
    
                    Text("Oi")
                    Button{
                        var indice = viewModel.listaPlantas.firstIndex(where: {$0.id == planta.id})
                        viewModel.listaPlantas[indice!].estaRegado.toggle()
                    } label: {
                        Text("Regar")
                    }
                })
        }
        }
        
        Button(action: {viewModel.adicionarPlanta(nome: "Cacto", estaRegado: false)}, label: {
            Text("Adicionar Planta")
        })
    }
}

#Preview {
    ListaPlantas()
}

struct Cadastro_usuarioView: View{
    var body: some View{
        CadastroView()
        
    }
    
    struct CadastroView: View{
        @State private var nome = ""
        @State private var email = ""
        @State private var senha = ""
        @State private var irParaLista = false
        
        var body: some View {
            VStack(alignment: .leading) {
                TextField("Nome", text: $nome)
                    .textFieldStyle(.roundedBorder)
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                SecureField("Senha", text: $senha)
                    .textFieldStyle(.roundedBorder)
                
                Button("Cadastrar"){
                    print("Usuário cadastrado: \(nome), \(email)")
                    irParaLista = true
                }
                .padding(.top)
                
                NavigationLink(destination: ListaPlantas(), isActive: $irParaLista) {
                    EmptyView()
                }
            }
            .padding()
        }
    }
}
