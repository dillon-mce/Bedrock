//
//  ArrayTests.swift
//  
//
//  Created by Dillon McElhinney on 5/19/20.
//

import XCTest
import Bedrock

class ArrayTests: XCTestCase {

    func test_deduplicate_withNoDuplicates_returnsArray() {
        // given
        let sut = [1, 2, 3, 4, 5]

        // when
        let result = sut.deduplicated()

        // then
        XCTAssertEqual(result, sut)
    }

    func test_deduplicate_removesAllDuplicates() {
        // given
        let expected = [1, 2, 3, 4, 5]
        let sut = expected.reduce(into: [Int]()) {
            $0 += Array(repeating: $1, count: Int.random(in: 1...5))
        }

        // when
        let result = sut.deduplicated()

        // then
        XCTAssertEqual(expected, result)
    }

}
