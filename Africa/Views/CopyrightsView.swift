//
//  CopyrightsView.swift
//  Africa
//
//  Created by David U. Okonkwo on 3/20/21.
//

import SwiftUI

struct CopyrightsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyrights © David Okonkwo
    All righs reserved
    Better App ♡ Less Code
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//: VStack
        .padding()
        .opacity(0.4)
    }
}

struct CopyrightsView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
