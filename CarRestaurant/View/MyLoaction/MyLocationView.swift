//
//  MyLocationView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2023/12/31.
//

import SwiftUI

struct MyLocationView: View {
    
    var body: some View{
        
        NavigationView{
            
            VStack{
                
                MyLocationMapView()
                
            }
            
            .navigationTitle("내 주변")
            .navigationBarTitleDisplayMode(.large)
            
        }
        
        
    }
    
}


struct MyLocationView_Preview: PreviewProvider {
    static var previews: some View {
        
        
        MyLocationView()
    }
}




