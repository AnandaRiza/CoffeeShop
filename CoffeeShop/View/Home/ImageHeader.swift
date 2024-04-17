//
//  ImageHeader.swift
//  CoffeeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ImageHeader: View {
    
    var coffeeshop: Coffeeshop
    
    var body: some View {
        ZStack(alignment: .bottom){
            Image(coffeeshop.image)
            
            HStack{
                VStack {
                    Text(coffeeshop.name)
                        .font(.title)
                    .foregroundStyle(.white)
                    
                    Text(coffeeshop.location)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            
                Spacer()
                Image(systemName: "fork.knife.circle.fill")
            }
            .font(.largeTitle)
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding()
            .background(RandomColor.bgView().opacity(0.4))
        }
        
    }
}

#Preview {
    ImageHeader(coffeeshop: CoffeeshopProvider.allData().first!)
}
