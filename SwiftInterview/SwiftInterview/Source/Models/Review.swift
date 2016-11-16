//
//  Review.swift
//  SwiftInterview
//
//  Created by Yuxi Lin on 10/20/16.
//  Copyright © 2016 mobileforming. All rights reserved.
//

import UIKit

class Review: NSObject {
    
    var stars: Int
    var comment: String
    var reviewerId: String
    var likes: [String]
    
    override init() {
        self.stars = -1
        self.comment = ""
        self.reviewerId = ""
        self.likes = [];
        super.init()
    }
    
    init(stars: Int, comment: String, reviewerId: String, likes: [String]) {
        self.stars = stars
        self.comment = comment
        self.reviewerId = reviewerId
        self.likes = likes
        
        super.init()
    }
    
    // POSSIBLE BUG TO INTRODUCE: Make json that will cause a crash here
    class func parse(dictionary: [String: Any]) -> Review {
        return Review(stars: dictionary["stars"] as! Int,
                      comment: dictionary["comment"] as! String,
                      reviewerId: dictionary["reviewerId"] as! String,
                      likes: dictionary["likes"] as! [String])
    }
    
    // POSSIBLE IMPROVEMENT/FIX FOR BUG: Rewrite method to be more like this:
    /*class func parse(dictionary: [String: Any]) -> Review {
        guard let stars = dictionary["stars"] as? Int,
        let comment = dictionary["comment"] as? String,
        let reviewerId = dictionary["reviewerId"] as? String,
        let likes = dictionary["likes"] as? [String]
            else {
                return Review()
        }
        
        return Review(stars: stars, comment: comment, reviewerId: reviewerId, likes: likes)
    }*/
}
