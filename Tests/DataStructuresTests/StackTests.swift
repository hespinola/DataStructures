import XCTest
@testable import DataStructures

final class StackTests: XCTestCase {
    func testCreateEmptyStack() throws {
        XCTAssertEqual(Stack<Int>().isEmpty, true)
    }
    
    func testPushIntoStack() throws {
        var stack = Stack<Int>()
        let value = 15
        stack.push(value)
        XCTAssertEqual(stack.top(), value)
    }
    
    func testReverseArray() throws {
        let reversed = [8, 7, 6, 5, 4, 3, 2, 1]
        var array = [1, 2, 3, 4, 5, 6, 7, 8]
        var stack = Stack<Int>()
        
        for item in array {
            stack.push(item)
        }
        
        array.removeAll()
        
        while !stack.isEmpty {
            array.append(stack.pop()!)
        }
        
        XCTAssertEqual(array, reversed)
        XCTAssertTrue(stack.isEmpty)
    }
}
