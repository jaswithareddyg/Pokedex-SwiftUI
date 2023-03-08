//
//  PokemonDetailView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/7/23.
//

import SwiftUI

struct PokemonDetailView: View {
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
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
        .onAppear{
            viewModel.getDetails(pokemon: pokemon)
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
