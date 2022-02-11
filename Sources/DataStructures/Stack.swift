public struct Stack<T> {
    private var items: [T] = []
    
    public init() {}
    
    /// Initialize a Stack with an array of items
    /// - Parameter items: Items to initialize the stack
    public init(_ items: [T]) {
        self.items = items
    }
    
    /// Return the size of the Stack
    public var size: Int {
        items.count
    }
    
    /// Determine if the Stack is empty
    public var isEmpty: Bool {
        top() == nil
    }
    
    /// Push a new value to the end of the stack
    /// Complexity: O(1)
    /// - Parameter value: Value to be added
    public mutating func push(_ value: T) {
        items.append(value)
    }
    
    /// Retrieve and remove the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public mutating func pop() -> T? {
        items.popLast()
    }
    
    /// Retrieve the last element from the Stack
    /// Complexity: O(1)
    /// - Returns: Value if it exists
    public func top() -> T? {
        items.last
    }
}
