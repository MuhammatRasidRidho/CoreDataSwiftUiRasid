//
//  AddOrderViewModel.swift
//  CoreDataRasid
//
//  Created by Muhammat Rasid Ridho on 03/11/20.
//

import Foundation
import SwiftUI

class AddOrderViewModel {
    
    var name: String = ""
    var type: String = ""
    
    func saveOrder() {
        
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
        
    }
    
}
