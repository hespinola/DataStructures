public struct Queue<T> where T: Equatable {
    private var storage: LinkedList<T>
    
    public init() {
        storage = LinkedList()
    }
    
    public var isEmpty: Bool {
        storage.isEmpty
    }
    
    public mutating func append(_ value: T) {
        storage.append(value)
    }
    
    public mutating func pop() -> T? {
        storage.pop()
    }
    
    public func peek() -> T? {
        storage.head?.value
    }
}
