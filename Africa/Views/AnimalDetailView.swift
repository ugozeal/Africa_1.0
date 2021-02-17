//
//  AnimalDetailView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20){
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //TITLE
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALLERY
                Group {
                    HeadingView(headLineImage: "photo.on.rectangle.angled",
                                headLineText: "Wilderness in Pictures")
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //FACTS
                Group {
                    HeadingView(headLineImage: "questionmark.circle",
                                headLineText: "Did you know?")
                    InsertFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //DESCRIPTION
                Group {
                    HeadingView(headLineImage: "info.circle",
                                headLineText: "All about \(animal.name)")
                    Text(animal.description)
                }
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
                .layoutPriority(1)
                
                //MAP
                Group {
                    HeadingView(headLineImage: "map",
                                headLineText: "National Park")
                    InsertMapView()
                }
                .padding(.horizontal)

                //LINK
                Group {
                    HeadingView(headLineImage: "books.vertical", headLineText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }//:VStack
            .navigationBarTitle("Learn About \(animal.name)", displayMode: .inline)
        }//:ScrollView
    }
}

struct AnimalDetaailView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 12 Pro")
    }
}
