//
//  SearchBar.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/01.
//

import Foundation
import SwiftUI
 
struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack{
            TextField("주유소 이름 검색", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0,
                                   maxWidth: .infinity,alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .onTapGesture {
                    isEditing = true
                }
            
            if isEditing{
                Button(action: {
                    isEditing = false
                    text = ""
                    UIApplication.shared.endEditing()
                }, label: {
                    Text("취소")
                        .foregroundColor(.black)
                })
                .padding(.trailing, 0)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("주유소 이름 검색"), isEditing: .constant(true))
    }
}



