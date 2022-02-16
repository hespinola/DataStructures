public class LinkedListNode<T> {
    public var value: T
    public var next: LinkedListNode<T>?

    public init(value: T, next: LinkedListNode<T>? = nil) {
        self.value = value
        self.next = next
    }
}
