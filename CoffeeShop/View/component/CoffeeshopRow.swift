//
//  CoffeeshopRow.swift
//  CoffeeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI
struct CoffeeshopRow: View {

    var coffeeshop: Coffeeshop
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(coffeeshop.image)
                .resizable()
                .scaledToFill()
                .frame(height:130)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped()

            VStack(alignment: .leading){
                Text(coffeeshop.name)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.blue)
                    
                
                Text(coffeeshop.description)
                    .font(.caption)
                    .lineLimit(3, reservesSpace: true)
                    .padding(.bottom)

                    
                Text(coffeeshop.location)
                    .font(.caption)
                    .foregroundStyle(.secondary)

                
                
                
            }
        }
    }
}

#Preview {
    CoffeeshopRow(coffeeshop: CoffeeshopProvider.allData().first!)
}
