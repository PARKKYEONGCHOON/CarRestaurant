//
//  SearchListView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/03.
//

import SwiftUI

struct SearchListView:View {
    
    var body: some View{
        
        ScrollView {
            
            VStack{
                
                NavigationLink(
                    destination: {
                        SearchDetailView()
                    },
                    label: {
                        SearchListCell()
                    }
                )
                
                
                
            }
            
            
        }
        
        
        
    }
    
    
}

struct SearchListView_Preview: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
