//
//  MapView.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/06.
//

import Foundation
import SwiftUI
import NMapsMap


struct MapView: View{
    var body: some View {
        VStack {
            UIMapView()
                .edgesIgnoringSafeArea(.vertical)
        }
    }
}


struct UIMapView: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator.shared
    }
    
    func makeUIView(context: Context) -> NMFNaverMapView {
        context.coordinator.getNaverMapView()
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) {}
    
}
