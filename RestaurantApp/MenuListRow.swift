//
//  MenuListRow.swift
//  Menu App
//
//  Created by Sayman Rifat on 12/21/23.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    var body: some View {
        
            HStack{
                
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 50)
                    .cornerRadius(25)
                
                Text(item.name).bold()
                
                Spacer()
                
                Text("$"+item.price)
                
            }.listRowSeparator(.hidden)
                .listRowBackground(Color(.brown).opacity(0.01))
        
    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "Text", price: "0.00", imageName: "avocado-maki"))
}
