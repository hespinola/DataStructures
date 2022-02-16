import XCTest
@testable import DataStructures

final class StackTests: XCTestCase {
    func testCreateEmptyStack() {
        let stack = Stack<Int>()
        
        XCTAssertTrue(stack.isEmpty)
    }
    
    func testAddToStack() {
        var stack = Stack<Int>()
        
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(stack.peek(), 3)
    }
    
    func testRemoveFromStack() {
        var stack = Stack<Int>()
        
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        let value = stack.pop()
        
        XCTAssertFalse(stack.isEmpty)
        XCTAssertEqual(value, 3)
        XCTAssertEqual(stack.peek(), 2)
    }
    
    func testReverseArrayWithStack() {
        var array = [1, 2, 3, 4, 5]
        let reversedArray = [5, 4, 3, 2, 1]
        var stack = Stack<Int>()
        
        for item in array {
            stack.push(item)
        }
        
        array.removeAll()
        
        while let value = stack.pop() {
            array.append(value)
        }
        
        XCTAssertEqual(array, reversedArray)
    }
}
