//
//  OverviewDetail.swift
//  CoffeeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct OverviewDetail: View {
    
    var coffeeshop : Coffeeshop
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                ImageHeader(coffeeshop: coffeeshop)
                
                HStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text(coffeeshop.overview)
                    }
                    .padding()
                    
                }
                .padding()
                
            }
            
        }
        
    }
}

#Preview {
    OverviewDetail(coffeeshop:CoffeeshopProvider.allData().first!)
}
