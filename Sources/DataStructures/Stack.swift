public struct Stack<T> where T: Equatable {
    private var storage: LinkedList<T>
    
    public init() {
        storage = LinkedList()
    }
    
    /// Determine if the Stack is empty
    public var isEmpty: Bool {
        storage.isEmpty
    }
    
    /// Push a new value at the beginning of the stack
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func push(_ value: T) {
        storage.append(value)
    }
    
    /// Retrieve and remove the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public mutating func popLast() -> T? {
        storage.removeLast()
    }
    
    /// Retrieve the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public func peek() -> T? {
        storage.tail?.value
    }
}
