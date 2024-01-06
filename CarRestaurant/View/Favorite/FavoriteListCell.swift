//
//  FavoriteListCell.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/03.
//

import SwiftUI

struct FavoriteListCell: View {
    
    var body: some View{
        
        HStack(alignment: .center){
            
            VStack{
                Text("이름")
                Text("휘발유 가격 : 1000원")
                Text("경유 가격 : 1000원")
                
            }
            
            
            Spacer()
            
            Button(
                action: {
                    
                },
                label: {
                    Label("삭제", systemImage: "trash.circle")
                }
            )
            
            
        }
        .padding()
        .border(.black)
        
        
        
    }
    
}


struct FavoriteListCell_Preview: PreviewProvider {
    static var previews: some View {
        
        FavoriteListCell()
    }
}
