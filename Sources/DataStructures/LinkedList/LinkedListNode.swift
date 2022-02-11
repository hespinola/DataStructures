public class LinkedListNode<T> where T: Equatable {
    public var value: T
    public var next: LinkedListNode<T>?

    public init(value: T, next: LinkedListNode<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension LinkedListNode: Equatable {
    public static func == (lhs: LinkedListNode<T>, rhs: LinkedListNode<T>) -> Bool {
        lhs.next == rhs.next && lhs.value == rhs.value
    }
}
