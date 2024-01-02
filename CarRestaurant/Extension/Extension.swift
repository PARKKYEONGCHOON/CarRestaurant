//
//  Extension.swift
//  CarRestaurant
//
//  Created by 박경춘 on 2024/01/01.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    
}
