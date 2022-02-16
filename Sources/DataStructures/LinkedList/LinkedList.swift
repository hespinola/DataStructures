public struct LinkedList<T> {
    public var head: LinkedListNode<T>?
    public var tail: LinkedListNode<T>?
    
    /// Determine if the list is empty
    public var isEmpty: Bool {
        head == nil
    }
    
    /// Determine size of list
    /// Complexity: O(1)
    public var count: Int {
        guard !isEmpty else { return 0 }
        
        var currentIndex = 1
        var currentNode = head
        
        while let next = currentNode?.next {
            currentNode = next
            currentIndex += 1
        }
        
        return currentIndex
    }

    /// Empty initializer
    public init() {}
    
    /// Add a value at the beginning
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func addFirst(_ value: T) {
        head = LinkedListNode(value: value, next: head)
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
        
        tail?.next = LinkedListNode(value: value)
        tail = tail?.next
    }
    
    /// Insert value at specified position
    /// Complexity: O(n) where n is the index
    /// - Parameters:
    ///   - index: Position in the list
    ///   - value: Value to be added
    public mutating func insert(at index: Int, value: T) {
        guard index < count else {
            addLast(value)
            return
        }
        
        guard index > 0 else {
            addFirst(value)
            return
        }
        
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
        guard head !== tail else {
            head?.next = nil
            head = nil
            tail = nil
            return
        }
        
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
    public mutating func remove(at index: Int) {
        guard index > 0 else {
            removeFirst()
            return
        }
        
        guard index < count else {
            removeLast()
            return
        }
        
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
    
    /// Reverses Linked List
    /// Complexity: O(n)
    public mutating func reverse() {
        var previousNode: LinkedListNode<T>? = nil
        var currentNode = head
        var nextNode = currentNode?.next
        
        while nextNode != nil {
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
            
            nextNode = currentNode?.next
        }
        
        currentNode?.next = previousNode
        
        let temp = head
        head = tail
        tail = temp
    }
    
    @discardableResult
    public func printList() -> String {
        var currentNode = head
        var output = ""
        
        while let node = currentNode {
            output += "\(node.value) -> "
            currentNode = node.next
        }
        
        output += "\(String(describing: tail?.next?.value ?? nil))"
        print(output)
        
        return output
    }
}
