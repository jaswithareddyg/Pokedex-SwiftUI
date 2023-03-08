//
//  PokemonManager.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/7/23.
//

import Foundation

class PokemonManager {
    func getPokemon() -> [Pokemon] {
        let data: PokemonPage = Bundle.main.decode(file: "pokemon.json")
        let pokemon: [Pokemon] = data.results
        return pokemon
    }
    
    func getDetailedPokemon(id: Int, _ completion: @escaping (DetailPokemon) -> ()) {
        Bundle.main.fetchData(url: "https://pokeapi.co/api/v2/pokemon/\(id)/", model: DetailPokemon.self) { data in
            completion(data)
            print(data)
        } failure: { error in
            print(error)
        }
    }
}
