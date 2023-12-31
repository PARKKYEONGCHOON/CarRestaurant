//
//  MainTabView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2023/12/31.
//

import SwiftUI

struct MainTabView: View {

    @State private var selection = 0
    @State var searchText: String = ""
    
    let numTabs = 3
    let minDragTranslationForSwipe: CGFloat = 50
    
    var body: some View {
        
        VStack{
            TabView(selection: $selection){
                
                
                MyLocationView()
                    .tabItem {
                        Tab.MyLocation.tabImageItem
                        Tab.MyLocation.tabTextItem
        
                    }
                    .tag(0)
                    .onTapGesture {
                        selection = 0
                        
                    }
                    .onAppear() {
                        
                    }
                    .highPriorityGesture(DragGesture().onEnded({
                        self.handleSwipe(translation: $0.translation.width)
                    }))
                
                
                SearchView()
                    .tabItem {
                        Tab.Search.tabImageItem
                        Tab.Search.tabTextItem
        
                    }
                    .tag(1)
                    .onTapGesture {
                        selection = 1
                        
                    }
                    .onAppear() {
                        
                    }
                    .highPriorityGesture(DragGesture().onEnded({
                        self.handleSwipe(translation: $0.translation.width)
                    }))
                
                
                
                FavoriteView()
                    .tabItem {
                        Tab.Favorite.tabImageItem
                        Tab.Favorite.tabTextItem
        
                    }
                    .tag(2)
                    .onTapGesture {
                        selection = 2
                        
                    }
                    .onAppear() {
                        
                    }
                    .highPriorityGesture(DragGesture().onEnded({
                        self.handleSwipe(translation: $0.translation.width)
                    }))
                
                
            }
            
            
            
        }
        
    }

    
    
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        MainTabView()
    }
}

extension MainTabView {
    
    private func handleSwipe(translation: CGFloat) {
        if translation > minDragTranslationForSwipe && selection > 0
        {
            selection -= 1
        } else  if translation < -minDragTranslationForSwipe && selection < numTabs-1
        {
            selection += 1
        }
        else if selection == numTabs - 1 {
            selection = 0
        }
    }
    
    
    
}

