//
//  CenterModifier.swift
//  Africa
//
//  Created by David U. Okonkwo on 3/20/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
