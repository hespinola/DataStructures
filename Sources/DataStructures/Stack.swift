public struct Stack<T> {
    private var items: [T] = []
    
    public init() {}
    
    /// Initialize a Stack with an array of items
    /// - Parameter items: Items to initialize the stack
    public init(_ items: [T]) {
        self.items = items
    }
    
    public var size: Int {
        items.count
    }
    
    public var isEmpty: Bool {
        top() == nil
    }
    
    public mutating func push(_ value: T) {
        items.append(value)
    }
    
    public mutating func pop() -> T? {
        items.popLast()
    }
    
    public func top() -> T? {
        items.last
    }
}
