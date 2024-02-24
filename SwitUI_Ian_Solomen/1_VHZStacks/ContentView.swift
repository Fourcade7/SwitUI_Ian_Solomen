//
//  ContentView.swift
//  SwitUI_Ian_Solomen
//
//  Created by Fourcade7 on 20/02/24.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
