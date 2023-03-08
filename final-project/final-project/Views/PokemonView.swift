//
//  PokemonView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/7/23.
//

import SwiftUI

struct PokemonView: View {
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    let dimensions: Double = 140
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(viewModel.getPokemonIndex(pokemon: pokemon)).png")) {image in
                if let image = image {
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: dimensions, height: dimensions)
                }
            } placeholder: {
                ProgressView()
                    .frame(width: dimensions, height: dimensions)
            }
            .background(.thinMaterial)
            .clipShape(Circle())
            
            HStack(alignment: .top, spacing: 12.0) {
                Text("\(pokemon.name.capitalized)")
                    .font(.system(size: 20, weight: .regular, design: .monospaced))
                    .padding(.bottom, 20)
                
                Button(action: {addFavorite(pokemon: pokemon)}) {
                    if viewModel.isFavorite(pokemon: pokemon) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                }
                .tint(.yellow)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    func addFavorite(pokemon: Pokemon) {
        viewModel.toggleFavorite(pokemon: pokemon)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: Pokemon.samplePokemon)
            .environmentObject(ViewModel())
    }
}
