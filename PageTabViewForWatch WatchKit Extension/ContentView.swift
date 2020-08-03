//
//  ContentView.swift
//  PageTabViewForWatch WatchKit Extension
//
//  Created by Jason Ji on 8/3/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Rectangle().foregroundColor(.red).frame(maxHeight: 50, alignment: .top)
                Rectangle().foregroundColor(.blue).frame(maxHeight: 50, alignment: .top)
                Rectangle().foregroundColor(.green).frame(maxHeight: 50, alignment: .top)
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(maxHeight: 50)
            Button("Push Me") { print("push me") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
