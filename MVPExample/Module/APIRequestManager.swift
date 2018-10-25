//
//  APIRequestManager.swift
//  MVPExample
//
//  Created by takakura naohiro on 2018/10/24.
//  Copyright © 2018年 GeoMagnet. All rights reserved.
//

import Foundation
import Alamofire

struct APIRequestManager {
    
    private let apiBaseURL = "http://api.openweathermap.org/data/2.5/forecast?q=Tokyo&APPID=62364e669e8ecea3340a39bb13359b5c"
    
    let apiUrl: String
    let method: HTTPMethod
    let parameters: Parameters
    
    init(endPoint: String, method: HTTPMethod = .get, parameters: Parameters = [:]) {
        apiUrl = apiBaseURL + endPoint
        self.method = method
        self.parameters = parameters
    }
    
    func requestAnsync(success: @escaping (_ data: String)-> Void, fail: @escaping (_ error: Error?)-> Void) {
        
        Alamofire.request(apiUrl, method: method, parameters: parameters).responseJSON { response in
            if response.result.isSuccess {

                success(response.result.value as! String)
            } else {
                fail(response.result.error)
            }
        }
    }
}

