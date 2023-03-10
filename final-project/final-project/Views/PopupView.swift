//
//  PopupView.swift
//  final-project
//
//  Created by Jaswitha Reddy G on 3/9/23.
//

import SwiftUI

struct PopupView: View {
    @Environment(\.dismiss) var dismiss // dismisses the popup view
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16.0) {
                HStack {
                    Spacer()
                    Button("Cancel") {
                        dismiss()
                    }
                    .font(.system(size: 15, weight: .regular, design: .monospaced))
                    .padding(20)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(30)
                    Spacer()
                }
                .padding(.bottom)
                
                Text("**ID** is the identifier of the pokémon.")
                Text("**Height** is the height of the pokémon in meters.")
                Text("**Weight** is the height of the pokémon in kilograms.")
                Text("**Base Experience** is the basic experience gained for defeating this Pokémon.")
                Text("**Order** is the order for sorting. Almost national order, except families are grouped together.")
            }
            .font(.system(size: 20, weight: .regular, design: .monospaced))
            .multilineTextAlignment(.leading)
            .padding(.horizontal)
            .padding()
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
