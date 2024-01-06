//
//  MyLocationMapView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/02.
//

import SwiftUI

struct MyLocationMapView: View {
    
    var body: some View {
        
        VStack(spacing: 5.0){
            
            Spacer()
                
            MapView()
                
            Spacer()
            
            HStack{
                Text("esad")
                
                
            }
        }
        
        
        
        
        
        
    }
    
}

struct MyLocationMapView_Preview: PreviewProvider {
    static var previews: some View {
        
        
        MyLocationMapView()
    }
}
