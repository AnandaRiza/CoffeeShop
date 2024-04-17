//
//  ContentView.swift
//  CoffeeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    
    var coffeeshops : [Coffeeshop] = CoffeeshopProvider.allData()

    
    var body: some View {
        NavigationStack{
            List(coffeeshops){coffeeshop in NavigationLink{
                OverviewDetail(coffeeshop: coffeeshop)}label: {
                    CoffeeshopRow(coffeeshop: coffeeshop)
                    
                }
            }
                .navigationTitle("Coffee Shop List")
                .listStyle(.plain)
                .navigationBarTitleDisplayMode(.inline)
                
               
        }
        
    }
    
}

#Preview {
    ContentView()
}
