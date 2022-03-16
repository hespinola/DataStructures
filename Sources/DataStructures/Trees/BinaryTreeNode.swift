public class BinaryTreeNode<T> {
    public var data: T
    public var left: BinaryTreeNode?
    public var right: BinaryTreeNode?
    
    public init(data: T) {
        self.data = data
    }
}
