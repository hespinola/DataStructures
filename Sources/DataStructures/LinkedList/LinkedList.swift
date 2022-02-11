public struct LinkedList<T> where T: Equatable {
    public var head: LinkedListNode<T>?
    public var tail: LinkedListNode<T>?
    
    
    /// Empty initializer
    public init() {}
    
    
    /// Determine if the list is empty
    public var isEmpty: Bool {
        head == nil
    }
    
    /// Push a value to the head of the list
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func push(_ value: T) {
        head = LinkedListNode(value: value, next: head?.next)
        if tail == nil {
            tail = head
        }
    }
    
    /// Add a new value to the tail of the list
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func append(_ value: T) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail?.next = LinkedListNode(value: value)
        tail = tail?.next
    }
    
    /// Add a new collection to the tail of the list
    /// Complexity: O(n) where n is the length of the collection
    /// - Parameter collection: Collection to be added
    public mutating func addAll(_ collection: [T]) {
        for item in collection {
            append(item)
        }
    }
    
    /// Retrieve the node in a specific position
    /// Complexity: O(n) where n is the index
    /// - Parameter index: Position in the list
    /// - Returns: Returns the node in the given position or nil if it's out of bounds
    public func node(at index: Int) -> LinkedListNode<T>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    /// Retrieve the value in a position
    /// Complexity: O(n) where n is the index
    /// - Parameter index: Position in the list
    /// - Returns: Returns nil if the index is out of bounds
    public func value(at index: Int) -> T? {
        node(at: index)?.value
    }
    
    /// Inserts a new value after a given index if the index is within bounds
    /// Complexity: O(n) where n is the index
    /// - Parameters:
    ///   - value: Value to be added
    ///   - index: The position in the list
    public mutating func insert(_ value: T, after index: Int) {
        guard let listNode = node(at: index) else {
            return
        }
        
        listNode.next = LinkedListNode(value: value, next: listNode.next)
    }
}
