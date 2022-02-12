public struct Queue<T> where T: Equatable {
    
    /// Internal queue storage
    private var storage: LinkedList<T>
    
    public init() {
        storage = LinkedList()
    }
    
    /// isEmpty: Returns true if queue is empty
    public var isEmpty: Bool {
        storage.isEmpty
    }
    
    /// Appends a value at the end of the queue
    /// Complexity: O(!)
    /// - Parameter value: Value to be added to the queue
    public mutating func append(_ value: T) {
        storage.append(value)
    }
    
    /// Returns and removes the first element in the queue
    /// Complexity: O(1)
    /// - Returns: The first element of the queue if any
    public mutating func pop() -> T? {
        storage.pop()
    }
    
    /// Returns the first element of the queue
    /// Complexity: O(1)
    /// - Returns: Returns the first element in the queue if any
    public func peek() -> T? {
        storage.head?.value
    }
}
