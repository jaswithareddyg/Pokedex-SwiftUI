//
//  PokemonDetailView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/7/23.
//

import SwiftUI

struct PokemonDetailView: View {
    @State private var showPopup = false
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
        ScrollView{
            VStack(spacing: 70.0) {
                HStack(alignment: .center) {
                    Button(action: {
                        self.showPopup = true
                    }) {
                        Image(systemName: "info.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
                    }
                }
                
                VStack {
                    PokemonView(pokemon: pokemon)
                    VStack(spacing: 10) {
                        Text("**ID**: \(viewModel.pokemonDetails?.id ?? 0)")
                        Text("**Weight**: \(viewModel.formatHW(value: viewModel.pokemonDetails?.weight ?? 0)) KG")
                        Text("**Height**: \(viewModel.formatHW(value: viewModel.pokemonDetails?.height ?? 0)) M")
                        Text("**Base Experience**: \(viewModel.pokemonDetails?.base_experience ?? 0)")
                        Text("**Order**: \(viewModel.pokemonDetails?.order ?? 0)")
                    }
                    .font(.system(size: 20, weight: .regular, design: .monospaced))
                }
                .padding(.horizontal)
                .onAppear{
                    viewModel.getDetails(pokemon: pokemon)
                }
                
                NavigationLink(destination: View3D()) {
                    Text("View in 3D")
                        .font(.title3)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.949))
                        .cornerRadius(30)
                        .shadow(color: .gray, radius: 2, x: 3, y: 3)
                }
            }
            .sheet(isPresented: $showPopup) {
                        PopupView()
            }
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
