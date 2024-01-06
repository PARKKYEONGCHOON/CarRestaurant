//
//  FavoriteListView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/03.
//

import SwiftUI

struct FavoriteListView: View {
    
    var body: some View{
        
        ScrollView {
            
            LazyVStack{
                
                NavigationLink(
                    destination: {
                        FavoriteDetailView()
                    },
                    label: {
                        FavoriteListCell()
                    }
                )
                
                    
                
            }
        }
        
        
        
        
    }
    
}


struct FavoriteListView_Preview: PreviewProvider {
    static var previews: some View {
        
        FavoriteListView()
    }
}

