import XCTest
@testable import DataStructures

final class QueueTests: XCTestCase {
    func testCreatingQueue() {
        let queue = Queue<Int>()
        XCTAssertTrue(queue.isEmpty)
    }
    
    func testAppendToQueue() {
        var queue = Queue<Int>()
        
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        
        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(queue.peek(), 1)
    }
    
    func testPopFromQueue() {
        var queue = Queue<Int>()
        
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        
        let value = queue.dequeue()
        
        XCTAssertFalse(queue.isEmpty)
        XCTAssertEqual(value, 1)
        XCTAssertEqual(queue.peek(), 2)
    }
}
