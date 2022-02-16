import XCTest
@testable import DataStructures

final class LinkedListTests: XCTestCase {
    func testCreateEmptyList() {
        let linkedList = LinkedList<Int>()
        XCTAssertTrue(linkedList.isEmpty)
    }
    
    func testAddFirst() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(2)
        
        XCTAssertFalse(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, 2)
        XCTAssertEqual(linkedList.head?.value, linkedList.tail?.value)
        
        linkedList.addFirst(1)
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.head?.next?.value, 2)
        XCTAssertEqual(linkedList.tail?.value, 2)
        XCTAssertEqual(linkedList.tail?.next?.value, nil)
    }
    
    func testAddLast() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addLast(1)
        linkedList.addLast(2)
        
        XCTAssertFalse(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 2)
        XCTAssertEqual(linkedList.head?.next?.value, 2)
    }
    
    func testInsertAtIndex() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(1)
        linkedList.addLast(3)
        linkedList.insert(at: 1, value: 2)
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.head?.next?.value, 2)
        XCTAssertEqual(linkedList.head?.next?.next?.value, 3)
        XCTAssertEqual(linkedList.tail?.value, 3)
        
        linkedList.insert(at: 10, value: 4)
        
        XCTAssertEqual(linkedList.tail?.value, 4)
        XCTAssertEqual(linkedList.head?.next?.next?.next?.value, 4)
    }
    
    func testRemoveFirst() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(1)
        linkedList.addLast(2)
        linkedList.addLast(3)
        linkedList.addLast(4)
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.head?.next?.value, 2)
        
        linkedList.removeFirst()
        
        XCTAssertEqual(linkedList.head?.value, 2)
        XCTAssertEqual(linkedList.head?.next?.value, 3)
        XCTAssertEqual(linkedList.head?.next?.next?.value, linkedList.tail?.value)
        
        linkedList.removeFirst()
        linkedList.removeFirst()
        
        XCTAssertEqual(linkedList.head?.value, 4)
        XCTAssertEqual(linkedList.head?.value, linkedList.tail?.value)
        
        linkedList.removeFirst()
        
        XCTAssertTrue(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, linkedList.tail?.value)
    }
    
    func testRemoveLast() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(1)
        linkedList.addLast(2)
        linkedList.addLast(3)
        linkedList.addLast(4)
        linkedList.addLast(5)
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 5)
        
        linkedList.removeLast()
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 4)
        XCTAssertEqual(linkedList.tail?.next?.value, nil)
        
        linkedList.removeLast()
        linkedList.removeLast()
        linkedList.removeLast()
        
        XCTAssertEqual(linkedList.tail?.value, 1)
        XCTAssertEqual(linkedList.head?.value, linkedList.tail?.value)
        
        linkedList.removeLast()
        
        XCTAssertTrue(linkedList.isEmpty)
        XCTAssertEqual(linkedList.head?.value, linkedList.tail?.value)
    }
    
    func testRemovingAtIndex() {
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(1)
        linkedList.addLast(2)
        linkedList.addLast(3)
        
        linkedList.remove(at: 1)
        
        XCTAssertEqual(linkedList.head?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, 3)
        XCTAssertEqual(linkedList.head?.next?.value, linkedList.tail?.value)
        
        linkedList.remove(at: 4)
        
        XCTAssertEqual(linkedList.tail?.value, 1)
        XCTAssertEqual(linkedList.tail?.value, linkedList.head?.value)
        
        linkedList.remove(at: 1)
        
        XCTAssertTrue(linkedList.isEmpty)
    }
    
    func testPrintList() {
        let expected = "1 -> 2 -> 3 -> nil"
        var linkedList = LinkedList<Int>()
        
        linkedList.addFirst(1)
        linkedList.addLast(2)
        linkedList.addLast(3)
        
        let result = linkedList.printList()
        
        XCTAssertEqual(expected, result)
    }
    
    func testReverseLinkedList() {
        let original = "1 -> 2 -> 3 -> 4 -> 5 -> nil"
        let reversed = "5 -> 4 -> 3 -> 2 -> 1 -> nil"
        
        var linkedList = LinkedList<Int>()
        
        linkedList.addLast(1)
        linkedList.addLast(2)
        linkedList.addLast(3)
        linkedList.addLast(4)
        linkedList.addLast(5)
        
        var output = linkedList.printList()
        
        XCTAssertEqual(original, output)
        
        linkedList.reverse()
        
        output = linkedList.printList()
        
        XCTAssertEqual(reversed, output)
    }
}

