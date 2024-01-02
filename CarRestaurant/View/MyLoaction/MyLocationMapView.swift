//
//  MyLocationMapView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/02.
//

import SwiftUI

struct MyLocationMapView: View {
    
    var body: some View {
        
        ZStack{
            
            Text("Map")
            
            MyLocationButtonView()
                .position(
                    x: UIScreen.main.bounds.size.width - 30,
                    y: UIScreen.main.bounds.size.height / 30)
            
        }
        
        
    }
    
}

struct MyLocationMapView_Preview: PreviewProvider {
    static var previews: some View {
        
        
        MyLocationMapView()
    }
}
