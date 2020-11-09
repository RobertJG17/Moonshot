//
//  ContentView.swift
//  Moonshot
//
//  Created by Robert Guerra on 11/7/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("maxresdefault")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
