//
//  Pin.swift
//  VTProject
//
//  Created by William Song on 8/2/15.
//  Copyright (c) 2015 Bill Song. All rights reserved.
//

import MapKit
import CoreData

// Make Pin available to Objective-C code
@objc(Pin)

// Make Pin a subclass of NSManagedObject and accessible by MKAnnotation
class Pin : NSManagedObject, MKAnnotation {
    
    struct Keys {
        static let Latitude = "latitude"
        static let Longitude = "longitude"
        static let Photos = "photos"
    }
    
    // Promotion of simple properties to Core Data attributes
    @NSManaged var latitude: Double
    @NSManaged var longitude: Double
    @NSManaged var pins: [Pin]
    @NSManaged var photos: [Photo]
    
    // Method for implementing MKAnnotation protocol
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }
    
    // Standard Core Data init method
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    // Dictionary
    init(dictionary: [String: AnyObject], context: NSManagedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Pin", inManagedObjectContext: context)!
        super.init(entity: entity, insertIntoManagedObjectContext: context)
        
        latitude = dictionary[Keys.Latitude] as! Double
        longitude = dictionary[Keys.Longitude] as! Double
        
    }
    
    
}
