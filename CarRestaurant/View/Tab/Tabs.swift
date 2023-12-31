//
//  Tabs.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2023/12/30.
//

import SwiftUI

enum Tab {
    
    case MyLocation
    case Search
    case Favorite
    
    
    var tabTextItem: Text {
        
        switch self {
        case .MyLocation: return Text("내 주변")
        case .Search: return Text("검색")
        case .Favorite: return Text("즐겨 찾기")
        }
        
    }
    
    var tabImageItem: Image {
        
        switch self {
        case .MyLocation: return Image("glass")
        case .Search: return Image("glass")
        case .Favorite: return Image("glass")
            
            
        }
        
    }
    
    
    
    
}
