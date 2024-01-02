//
//  SearchListCell.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/03.
//

import SwiftUI

struct SearchListCell: View {
    
    var body: some View{
        
        HStack(alignment: .center){
            
            VStack(alignment: .center, spacing: 5){
                
                Text("주유소 이름")
                    .font(.system(size: 20, weight: .bold))
                Text("휘발유 가격")
                Text("경유 가격")
                
                
            }
            
            Spacer()
            
            Text("10.0 km")
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.blue)
                
            
            
        }
        .padding()
        
        
    }
    
}


struct SearchListCell_Preview: PreviewProvider {
    static var previews: some View {
        
        SearchListCell()
    }
}
