import XCTest
@testable import DataStructures

final class StackTests: XCTestCase {
    func testCreateEmptyStack() throws {
        let stack = Stack<Int>()
        
        XCTAssertTrue(stack.isEmpty)
    }
    
    func testPushIntoStack() throws {
        var stack = Stack<Int>()
        
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.peek(), 3)
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
            array.append(stack.popLast()!)
        }
        
        XCTAssertEqual(array, reversed)
        XCTAssertTrue(stack.isEmpty)
    }
}
