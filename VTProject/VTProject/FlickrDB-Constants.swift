//
//  FlickrDB-Constants.swift
//  VTProject
//
//  Created by William Song on 8/2/15.
//  Copyright (c) 2015 Bill Song. All rights reserved.
//

import Foundation

extension FlickrDB {
    
    struct Constants {
        
        // MARK: - URLs
        static let ApiKey = "7a50b2ec89804dfcc24936305e25f56e"
        static let BaseUrl = "https://api.flickr.com/services/rest/"
        static let Extras: String = "url_m"
        static let MethodName = "flickr.photos.search"
    }
    
    struct Resources {
        static let Extras = "url_m"
        static let SafeSearch = "1"
        static let DataFormat = "json"
        static let NoJsonCallBack = "1"
        static let PerPage = 15
    }
}
