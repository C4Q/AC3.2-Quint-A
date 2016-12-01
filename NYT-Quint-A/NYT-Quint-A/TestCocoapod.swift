//
//  TestAlamofire.swift
//  NYT-Quint-A
//
//  Created by Karen Fuentes on 12/1/16.
//  Copyright © 2016 Kadell. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

class TestCocoapod {
    
    class func makeRequest() {
        Alamofire.request("https://api.nytimes.com/svc/topstories/v2/home.json?api-key=f41c1b23419a4f55b613d0a243ed3243").validate().responseJSON{(response) in
            
            if let rawJson = response.result.value {
                let json = JSON(rawJson)
                let articleArray = json["results"].arrayValue
                for articleDict in articleArray {
                    if let section = articleDict["section"].string,
                        let subsection = articleDict["subsection"].string,
                        let title = articleDict["title"].string,
                        let abstract = articleDict["abstract"].string,
                        let url = articleDict["url"].string,
                        let byline = articleDict["byline"].string {
                        //                    let item_type = userDict["item_type"] as? String
                        //                    let updated_date = userDict["updated_date"] as? String,
                        //                    let created_date = userDict["created_date"] as? String,
                        //                    let published_date = userDict["published_date"] as? String,
                        //                    let des_facet = userDict["des_facet"] as? [String],
                        //                    let org_facet = userDict["org_facet"] as? [String],
                        //                    let per_facet = userDict["per_facet"] as? [String],
                        //                    let geo_facet = userDict["geo_facet"] as? [String]
                        let article = NYT(title: title, abstract: abstract, authors: byline, url: url)
                        dump(article)
                    }
                    
                }
                
             
            }
        }
    }
}
