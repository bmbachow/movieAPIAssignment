//
//  APIHandler.swift
//  movieAPIAssignment
//
//  Created by Brian Bachow on 2/11/22.
//

import Foundation

class APIHandler{
    
    typealias fetchData = ((Data?, URLResponse?, Error?) -> ())?
    
    static let shared = APIHandler.init()
    
    private init() {}
    
    func getData(completionHandler : fetchData) {
        guard let url = URL.init(string: Constant.serverURL.rawValue) else {return}
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
            completionHandler?(data, response, error)
        }).resume()
        
    }

}
