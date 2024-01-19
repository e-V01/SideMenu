//
//  SideMenuRowView.swift
//  SideMenu
//
//  Created by Y K on 19.01.2024.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.medium)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .frame(height: 44)
    }
}

#Preview {
    SideMenuRowView(option: .dashboard)
}
