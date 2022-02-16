public struct Queue<T> {
    /// Internal queue storage
    private var list = LinkedList<T>()
    
    public init() {}
    
    /// isEmpty: Returns true if queue is empty
    public var isEmpty: Bool {
        list.isEmpty
    }
    
    /// Appends a value at the end of the queue
    /// Complexity: O(1)
    /// - Parameter value: Value to be added to the queue
    public mutating func append(_ value: T) {
        list.addLast(value)
    }
    
    /// Returns and removes the first element in the queue
    /// Complexity: O(1)
    /// - Returns: The first element of the queue if any
    public mutating func pop() -> T? {
        defer {
            list.removeFirst()
        }
        
        return list.head?.value
    }
    
    /// Returns the first element of the queue
    /// Complexity: O(1)
    /// - Returns: Returns the first element in the queue if any
    public func peek() -> T? {
        list.head?.value
    }
}
