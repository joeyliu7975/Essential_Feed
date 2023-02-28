//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by JiaSin Liu on 2023/2/28.
//

import XCTest

final class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a.url.com")
    }
}

final class HTTPClient {
    
    static let shared = HTTPClient()
    
    var requestedURL: URL?
    
    private init() {}
}

final class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init() {
        let client = HTTPClient.shared
        let _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
}
