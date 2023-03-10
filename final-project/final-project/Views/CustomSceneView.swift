//
//  CustomSceneView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/9/23.
//

import SwiftUI
import SceneKit

struct CustomSceneView: UIViewRepresentable{
    
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> SCNView{
        let view = SCNView()
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.antialiasingMode = .multisampling2X
        view.scene = scene
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        
    }
    
}

struct CustomSceneView_Previews: PreviewProvider {
    static var previews: some View {
        View3D(pokemon: Pokemon.samplePokemon)
    }
}
