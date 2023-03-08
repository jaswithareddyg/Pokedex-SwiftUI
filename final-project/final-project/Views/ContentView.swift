//
//  ContentView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(viewModel.filteredPokemon) {pokemon in
                            NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                                PokemonView(pokemon: pokemon)
                            }
                        }
                    }
                    .animation(.easeIn(duration: 0.3), value: viewModel.filteredPokemon.count)
                    .navigationTitle("Pokemon")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .searchable(text: $viewModel.searchText)
            }
            .environmentObject(viewModel)
            .tabItem {
                Image("small-pokeball.jpg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1, height: 1)
                    
                    
                Text("Pokemon")
                    .foregroundColor(.black)
                    
            }
            
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                        ForEach(viewModel.favoritefilteredPokemon) {pokemon in
                            NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                                PokemonView(pokemon: pokemon)
                            }
                        }
                    }
                    .animation(.easeIn(duration: 0.3), value: viewModel.favoritePokemon.count)
                    .navigationTitle("Pokemon")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .searchable(text: $viewModel.favoritesearchText)
            }
            .environmentObject(viewModel)
            .tabItem {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("Favorites")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
