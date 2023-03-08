//
//  View3D.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/8/23.
//

import SwiftUI

struct View3D: View {
    @State private var showingAlert = false
    
    var body: some View {
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

struct View3D_Previews: PreviewProvider {
    static var previews: some View {
        View3D()
    }
}
