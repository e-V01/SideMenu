//
//  SideMenuView.swift
//  SideMenu
//
//  Created by Y K on 18.01.2024.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle()}
            }
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(false))
}