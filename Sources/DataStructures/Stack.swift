public struct Stack<T> where T: Equatable {
    private var list = LinkedList<T>()
    
    public init() {}
    
    /// Determine if the Stack is empty
    public var isEmpty: Bool {
        list.isEmpty
    }
    
    /// Push a new value at the end of the stack
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func push(_ value: T) {
        list.addLast(value)
    }
    
    /// Retrieve and remove the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public mutating func pop() -> T? {
        defer {
            list.removeLast()
        }
        
        return list.tail?.value
    }
    
    /// Retrieve the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public func peek() -> T? {
        list.tail?.value
    }
}
