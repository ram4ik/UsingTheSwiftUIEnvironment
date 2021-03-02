//
//  ContentView.swift
//  UsingTheSwiftUIEnvironment
//
//  Created by Ramill Ibragimov on 02.03.2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Hello, world!")
            .caption(font: .largeTitle)
            .captionBackgroundColor(.yellow)
    }
}

private struct CaptionColorKey: EnvironmentKey {
    static let defaultValue = Color(.secondarySystemBackground)
}

extension View {
    func captionBackgroundColor(_ color: Color) -> some View {
        environment(\.captionBackgroundColor, color)
    }
}

extension EnvironmentValues {
    var captionBackgroundColor: Color {
        get { self[CaptionColorKey.self] }
        set { self[CaptionColorKey.self] = newValue }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
