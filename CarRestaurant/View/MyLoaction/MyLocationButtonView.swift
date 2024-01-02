//
//  MyLocationButtonView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/02.
//

import SwiftUI

struct MyLocationButtonView: View {
    
    var body: some View {
        
        VStack{
            
            Button(
                action: {
                
                },
                label: {
                    Image("pin3")
                }
            )
            
            .frame(width: 40, height: 40)
            .border(Color.blue, width: 3)
            .cornerRadius(5)
            
            
            
        }
        
        
    }
    
}

struct MyLocationButtonView_Preview: PreviewProvider {
    static var previews: some View {
        
        
        MyLocationButtonView()
    }
}
