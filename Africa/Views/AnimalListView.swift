//
//  AnimalListView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct AnimalListView: View {
    //MARK:- Properties
    let animal: AnimalModel
    
    //MARK:- Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width:90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//VStack
        }//: HSTACK
    }
}

//MARK:- Preview
struct AnimalListView_Previews: PreviewProvider {
    static let animals :[AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
