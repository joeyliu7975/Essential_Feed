//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by JiaSin Liu on 2023/2/28.
//

import XCTest

final class RemoteFeedLoader {}

final class HTTPClient {
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init() {
        let client = HTTPClient()
        let sut = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
