//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK:- Properties
    let animal: AnimalModel

    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            }//:HSTACK
        }//:Box
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals :[AnimalModel] = Bundle.main.decode("animals.json")

    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
