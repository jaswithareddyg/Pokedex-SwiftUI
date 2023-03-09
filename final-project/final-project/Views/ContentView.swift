//
//  ContentView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    @State private var showAlert = false
    
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
    
                }
                .animation(.easeIn(duration: 0.3), value: viewModel.filteredPokemon.count)
                .navigationTitle("Pokemon")
                .font(.custom("Pokemon Solid", size: 20))
                
                .searchable(text: $viewModel.searchText)
            }
            .tint(.black)
            .environmentObject(viewModel)
            .tabItem {
                Image("small-pokeball.jpg")
                Text("Pokemon")
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
                }
                .animation(.easeIn(duration: 0.3), value: viewModel.favoritePokemon.count)
                .navigationTitle("Pokemon")
                .font(.custom("Pokemon Solid", size: 20))
                .searchable(text: $viewModel.favoritesearchText)
            }
            .tint(.black)
            .environmentObject(viewModel)
            .tabItem {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Text("Favorites")
            }
        }
        .onAppear {
            self.showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Welcome!"), message: Text("This app does not work without the internet. Please be careful!"), dismissButton: .default(Text("OK!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
