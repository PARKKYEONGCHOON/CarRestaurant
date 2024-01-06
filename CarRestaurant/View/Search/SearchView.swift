//
//  SearchView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2023/12/31.
//


import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    @State var inSearchMode = false
    
    
    var body: some View{
        
        NavigationView{
            VStack{
                
                SearchBar(text: $searchText, isEditing: $inSearchMode)
                
                Spacer()
                
                if inSearchMode {
                    SearchListView()
                }
                
            }
            
            .navigationTitle("주유소 검색")
            .navigationBarTitleDisplayMode(.large)
        }
        
        
    }
    
}


struct SearchViewView_Preview: PreviewProvider {
    static var previews: some View {
        
        let text: String = ""
        
        SearchView(searchText: .constant(text))
    }
}


extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

