//
//  RequestManager.swift
//  Project Learning Testing
//
//  Created by Ivan Gabriel on 10/04/2020.
//  Copyright © 2020 Roweb. All rights reserved.
//

import Foundation
import Alamofire

public class RequestManager {
    
    static let shared = RequestManager()
    fileprivate let liveManager: Session
    fileprivate let mockManager: Session
    
    init(_ state: RequestState = .live) {
        let configuration: URLSessionConfiguration = {
            let configuration = URLSessionConfiguration.default
            configuration.protocolClasses = [MockURLProtocol.self]
            return configuration
        }()
        
        self.liveManager = Session.default
        self.mockManager = Session(configuration: configuration)
    }
}

public enum RequestState {
    case live
    case mock
    
    public var session: Session {
        switch self {
        case .live:
            return RequestManager.shared.liveManager
        case .mock:
            return RequestManager.shared.mockManager
        }
    }
}
