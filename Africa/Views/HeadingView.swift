//
//  HeadingView.swift
//  Africa
//
//  Created by David U. Okonkwo on 2/16/21.
//

import SwiftUI

struct HeadingView: View {
    //MARK:- Properties
    var headLineImage: String
    var headLineText: String
    
    var body: some View {
        HStack {
            Image(systemName: headLineImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headLineText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headLineImage: "person", headLineText: "fhhgfygygy ykfjj mjhggy fgyggy")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
