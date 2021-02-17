//
//  InsertGalleryView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct InsertGalleryView: View {
    //MARK:- Properties
    let animal: AnimalModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//:LOOP
            }//:HSTACK
        }//SCROLLVIEW
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    static let animals :[AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
