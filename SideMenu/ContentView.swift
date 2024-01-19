//
//  ContentView.swift
//  SideMenu
//
//  Created by Y K on 18.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                SideMenuView(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : . visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
