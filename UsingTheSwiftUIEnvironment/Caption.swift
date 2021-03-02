//
//  Caption.swift
//  UsingTheSwiftUIEnvironment
//
//  Created by Ramill Ibragimov on 02.03.2021.
//

import SwiftUI

struct Caption: ViewModifier {
    let font: Font
    @Environment(\.captionBackgroundColor) var backgroundColor
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .padding([.leading, .trailing], 5.0)
            .background(backgroundColor)
            .cornerRadius(5.0)
    }
}

extension View {
    func caption(font: Font = .caption) -> some View {
        modifier(Caption(font: font))
    }
}
