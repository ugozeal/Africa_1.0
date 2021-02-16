//
//  ContentView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(width: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListView(animal: animal)
                }
            }//: List
            .navigationBarTitle("Africa", displayMode: .large )
        }//: NavigationView
    }
}

//MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}
