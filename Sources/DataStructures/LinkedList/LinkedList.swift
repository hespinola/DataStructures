public struct LinkedList<T> {
    public var head: LinkedListNode<T>?
    public var tail: LinkedListNode<T>?
    
    /// Determine if the list is empty
    public var isEmpty: Bool {
        head == nil
    }

    /// Empty initializer
    public init() {}
    
    /// Add a value at the beginning
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func addFirst(_ value: T) {
        head = LinkedList(value: value, next: head)
        if tail == nil {
            tail = head
        }
    }
    
    /// Add a value at the end
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func addLast(_ value: T) {
        guard !isEmpty else {
            addFirst(value)
            return
        }
        
        tail?.next = LinkedList(value: value)
        tail = tail?.next
    }
    
    /// Insert value at specified position
    /// Complexity: O(n) where n is the index
    /// - Parameters:
    ///   - index: Position in the list
    ///   - value: Value to be added
    public mutating func insert(at index: Int, value: T) {
        var previousNode = head
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            previousNode = currentNode
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        previousNode?.next = LinkedListNode(value: value, next: currentNode)
    }
    
    /// Removes the first element in the list
    /// Complexity: O(1)
    public mutating func removeFirst() {
        head = head?.next
        if isEmpty {
            tail = nil
        }
    }
    
    /// Removes the last element in the list
    /// Complexity: O(n)
    public mutating func removeLast() {
        var previousNode = head
        var currentNode = head
        
        while let next = currentNode?.next {
            previousNode = currentNode
            currentNode = next
        }
        
        previousNode?.next = nil
        tail = previousNode
    }
    
    /// Removes element in specific position
    /// Complexity: O(n) where n is the index
    /// - Parameter index: Position to remove
    public func remove(at index: Int) {
        var previousNode = head
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            previousNode = currentNode
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        previousNode?.next = currentNode?.next
    }
    
    public func printList() {
        var currentNode = head
        
        while let node = currentNode {
            print("\(node.value) -> ")
            currentNode = node.next
        }
    }
}
