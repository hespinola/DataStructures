import XCTest
@testable import DataStructures

final class LinkedListTests: XCTestCase {
    func testCreateEmptyList() {
        let linkedList = LinkedList<Int>()
        XCTAssertTrue(linkedList.isEmpty)
    }
    
    func testPushingValuesToList() {
        var linkedList = LinkedList<Int>()
        
        linkedList.push(1)
        linkedList.push(2)
        linkedList.push(3)
        
        XCTAssertFalse(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, 3)
        XCTAssertEqual(linkedList.tail?.value, 1)
    }
    
    func testAppendingValuesToList() {
        var linkedList = LinkedList<Int>()
        
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        
        XCTAssertFalse(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 3)
    }
    
    func testAddingAllToList() {
        var linkedList = LinkedList<Int>()
        let array = [3, 4, 5]
        
        linkedList.push(1)
        linkedList.append(2)
        linkedList.addAll(array)
        
        XCTAssertFalse(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 5)
    }
    
    func testNodeAtIndex() {
        var linkedList = LinkedList<Int>()
        
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        linkedList.append(4)
        linkedList.append(5)
        
        let node = linkedList.node(at: 2)
        XCTAssertTrue(node != nil)
        XCTAssertTrue(node?.next != nil)
        XCTAssertEqual(node?.value, 3)
        
        let lastNode = linkedList.node(at: 4)
        XCTAssertEqual(linkedList.tail, lastNode)
    }
    
    func testValueAtIndex() {
        var linkedList = LinkedList<Int>()
        
        linkedList.append(1)
        linkedList.append(2)
        linkedList.append(3)
        linkedList.append(4)
        linkedList.append(5)
        
        let value = linkedList.value(at: 3)
        XCTAssertEqual(value, 4)
    }
    
    func testInsertAtIndex() {
        var linkedList = LinkedList<Int>()
        let array = [0, 1, 3, 4, 5]
        
        linkedList.addAll(array)
        
        XCTAssertEqual(linkedList.value(at: 2), 3)
        
        linkedList.insert(2, after: 1)
        
        XCTAssertEqual(linkedList.value(at: 3), 3)
        XCTAssertEqual(linkedList.value(at: 2), 2)
    }
}

