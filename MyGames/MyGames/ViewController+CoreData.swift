//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by Rennan Bruno on 18/02/22.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    
    var context: NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
}
