//
//  SideMenuRowView.swift
//  SideMenu
//
//  Created by Y K on 19.01.2024.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    @Binding var selectedOption: SideMenuOptionModel?
    
    private var isSelected: Bool {
        return selectedOption == option
    }
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.medium)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .blue : .primary)
        
        .frame(width: 216, height: 44)
        .background(isSelected ? .blue.opacity(0.15) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuRowView(option: .dashboard, selectedOption: .constant(.dashboard))
}
