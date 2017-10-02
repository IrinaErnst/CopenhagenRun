//
//  DefaultAlamofireManager.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 10/2/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import Foundation
import Alamofire

class DefaultAlamofireManager: Alamofire.SessionManager {
    static let sharedManager: DefaultAlamofireManager = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        configuration.timeoutIntervalForRequest = 30
        configuration.timeoutIntervalForResource = 30
        configuration.requestCachePolicy = .useProtocolCachePolicy
        return DefaultAlamofireManager(configuration: configuration)
    }()
}
