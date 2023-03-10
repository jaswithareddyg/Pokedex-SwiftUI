//
//  View3D.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/8/23.
//

import SwiftUI
import SceneKit

struct View3D: View {
    @State var scene: SCNScene? = .init(named: "Bulbasaur_-_Pokemon.scn")
    @State private var showingAlert = false
    
    @EnvironmentObject var viewModel: ViewModel
    let pokemon: Pokemon
    
    var body: some View {
        if (viewModel.pokemonDetails?.id == 1) {
            ScrollView{
                VStack(alignment: .center) {
                    Text("Bulbasaur")
                        .font(.custom("Pokemon Solid", size: 60))
                        .foregroundColor(.yellow)
                        .padding()
                        .overlay(
                            Text("Bulbasaur")
                                .font(.custom("Pokemon Hollow", size: 60))
                                .foregroundColor(.blue)
                        )
                            
                    CustomSceneView(scene: $scene)
                        .frame(height: 350)
                        .padding()
                }
            }
        }
        else {
            Button("Tap to View Alert") {
                showingAlert = true
            }
            .foregroundColor(.red)
            .fontWeight(.bold)
            .font(.title2)
            .alert("3D View Not Available", isPresented: $showingAlert) {
                Button("Dismiss", role: .cancel) {}
            }
        }
    }
}

struct View3D_Previews: PreviewProvider {
    static var previews: some View {
        View3D(pokemon: Pokemon.samplePokemon)
    }
}
