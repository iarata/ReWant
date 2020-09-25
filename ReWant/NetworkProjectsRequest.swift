//
//  NetworkProjectsRequest.swift
//  ReWant
//
//  Created by Alireza Hajebrahimi on 2020/09/26.
//

import Foundation
import Alamofire
import SwiftyJSON

extension Home {
    
    // MARK: - Fetch All Projects
    func fetchProjects(keyWord: String, page:Int, completion: @escaping (Bool, [Project]) -> Void) {
        
        // Defining parameters & GET request
        let parameters: [String: Any] = ["q": keyWord, "page": page]
        let request = AF.request("https://www.wantedly.com/api/v1/projects", parameters: parameters)
        
        var projects = [Project]()
        
        request.responseJSON { (response) in
            
            switch response.result {
            case .success(let valiue):
                
                let projectsJSONValue = JSON(valiue)
                
                // projects loop
                projectsJSONValue["data"].arrayValue.forEach {
                    
                    // Looping throw staff members
                    var staffingArray = [Dictionary<String, Any>]()
                    $0["staffings"].arrayValue.forEach { staffingArray.append($0.dictionaryObject!) }
                    
                    // default value if json was nil
                    let defaultValue = ["error": "none"]
                    
                    // PROJECT OBJECT
                    let wantedlyPJ = Project(id: $0["id"].intValue,
                                             title: $0["title"].stringValue,
                                             publishedAt: $0["published_at"].stringValue,
                                             supportCount: $0["support_count"].intValue,
                                             pageView: $0["page_view"].intValue,
                                             candidateCount: $0["candidate_count"].intValue,
                                             location: $0["location"].stringValue,
                                             locationSuffix: $0["location_suffix"].stringValue,
                                             projectDescription: $0["description"].stringValue,
                                             lookingFor: $0["looking_for"].stringValue,
                                             image: $0["image"].dictionaryObject ?? defaultValue,
                                             useWebview: $0["use_webview"].boolValue,
                                             company: $0["company"].dictionaryObject ?? defaultValue,
                                             staffingsCount: $0["staffings_count"].intValue,
                                             staffings: staffingArray,
                                             leader: $0["leader"].dictionaryObject ?? defaultValue,
                                             videoAvailable: $0["video_available"].boolValue,
                                             categoryMessage: $0["category_message"].stringValue,
                                             canSupport: $0["can_support"].boolValue,
                                             supported: $0["supported"].boolValue,
                                             canApply: $0["can_apply"].boolValue,
                                             applied: $0["applied"].boolValue,
                                             canBookmark: $0["can_bookmark"].boolValue)
                    
                    projects.append(wantedlyPJ)
                    print(wantedlyPJ.title)
                }
                
                completion(true, projects)
            case .failure(let error):
                print("\n\n Request failed with error: \(error)")
                completion(false, projects)
            }
        }
        
    }
    // MARK: Fetch All Projects - end -
    
}

