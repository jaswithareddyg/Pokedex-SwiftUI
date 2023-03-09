//
//  ViewModel.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/7/23.
//

import Foundation
import SwiftUI

final class ViewModel: ObservableObject {
    private let pokemonManager = PokemonManager()
    
    @Published var pokemonList = [Pokemon]()
    @Published var pokemonDetails: DetailPokemon?
    @Published var searchText = ""
    @Published var favoritesearchText = ""
    @Published var favoritePokemon: [Pokemon] = []
    
    var filteredPokemon: [Pokemon] {
        return searchText == "" ? pokemonList : pokemonList.filter { $0.name.contains(searchText.lowercased())
        }
    }
    
    var favoritefilteredPokemon: [Pokemon] {
        return favoritesearchText == "" ? favoritePokemon : favoritePokemon.filter { $0.name.contains(favoritesearchText.lowercased())
        }
    }
    
    init() {
        self.pokemonList = pokemonManager.getPokemon()
        //print(self.pokemonList)
    }
    
    func getPokemonIndex(pokemon: Pokemon) -> Int {
        if let index = self.pokemonList.firstIndex(of: pokemon) {
            return index + 1
        }
        return 0
    }
    
    func getDetails(pokemon: Pokemon) {
        let id = getPokemonIndex(pokemon: pokemon)
        self.pokemonDetails = DetailPokemon(id: 1, height: 0, weight: 0, base_experience: 0, order: 0)
        pokemonManager.getDetailedPokemon(id: id) {data in
            DispatchQueue.main.async {
                self.pokemonDetails = data
            }
        }
    }
    
    func formatHW(value: Int) -> String {
        let dValue = Double(value)
        let string = String(format: "%.2f", dValue / 10)
        return string
    }
    
    func toggleFavorite(pokemon: Pokemon) {
        if isFavorite(pokemon: pokemon) {
            favoritePokemon.removeAll(where: { $0.id == pokemon.id })
        } else {
            favoritePokemon.append(pokemon)
        }
    }
        
    func isFavorite(pokemon: Pokemon) -> Bool {
        return favoritePokemon.contains(where: { $0.id == pokemon.id })
    }
}
