//
//  ButtonLable.swift
//  YourCloset
//
//  Created by Ruba Abuhatlah on 02/08/1444 AH.
//

import SwiftUI

struct ButtonLabel: View {
    let symbolName: String
    let label: String
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(label)
        }
        .font(.headline)
        .padding()
        .frame(width: 150,height: 65)
        .background(Color("button1"))
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel(symbolName: "camera", label: "Camera")
    }
}
