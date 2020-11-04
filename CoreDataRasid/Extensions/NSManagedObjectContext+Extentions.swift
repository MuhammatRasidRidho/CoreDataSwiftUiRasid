//
//  NSManagedObjectContext+Extentions.swift
//  CoreDataRasid
//
//  Created by Muhammat Rasid Ridho on 03/11/20.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
