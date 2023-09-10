//
//  RandomAccessCollectionTests.swift
//  
//
//  Created by Dillon McElhinney on 9/10/23.
//

import XCTest
import Bedrock

class RandomAccessCollectionTests: XCTestCase {

    func test_safeSubscript_ValidIndex() {
        // given
        let sut = [1, 2, 3, 4, 5]

        for index in 0..<sut.count {
            let expectedResult = sut[index]

            // when
            let result = sut[safe: index]

            // then
            XCTAssertEqual(result, expectedResult)
        }
    }

    func test_safeSubscript_IndexTooSmall() {
        // given
        let sut = [1, 2, 3, 4, 5]

        // when
        let result = sut[safe: -1]

        // then
        XCTAssertNil(result)
    }

    func test_safeSubscript_IndexTooBig() {
        // given
        let sut = [1, 2, 3, 4, 5]

        // when
        let result = sut[safe: sut.count]

        // then
        XCTAssertNil(result)
    }
}
